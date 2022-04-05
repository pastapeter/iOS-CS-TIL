# 클린아키텍처를 적용하며.. (part.1)

> 초보 iOS 개발자이자 클린아키텍처를 공부하는 도중 쓰는 글이라서 틀릴 수도 있습니다.
> 

## 발단

팀프로젝트로 만든 앱을 리펙토링하는 과정에서 MVC 패턴에서 MVVM 패턴 + 클린아키텍처로 변경하는 과정에서 발생하는 어려움?을 작성해보았다. 특히 도메인 Layer에 대한 어려움과 그것을 고민했던 흔적을 적어보려고 한다. 

## 도메인 Layer

클린아키텍처를 적용을 하면서 도메인 레이어의 Usecase와 Entity를 어떻게 정의를 해야하는가? 이것이 가장 어려웠다. 

많은 자료들을 보면, 도메인 레이어는 다른 레이어들과의 의존성이 존재하면 안된다고 한다. 그리고 다른 의존성이나 3rd 파티가 필요하지 않기 때문에 앱 테스트를 할때 환경에 구애받지 않고 도메인, Usecase는 빠르게 Test가 가능하다. 

도메인 내부에는 UIkit, Data Layer의 codable은 여기에 존재하면 안된다.

## 도대체 어디까지가 Usecase?

지금까지 리펙토링을 하는 앱이 비즈니스 로직이 엄청 존재하는 앱이 아니다. 앱을 클린아키텍처를 기반으로 변경을 하다 보니, Usecase와 Repository가 거의 유사하게 변하는 상황이 발생했다. 

단순히 Usecase의 메서드는 repository의 메소드를 부르는 것과 동일한 상황이 벌어졌다. 이러한 상황에서 Usecase를 쓰는 것이 맞을까? 그렇다면 도대체 어디까지가 Usecase를 사용해야한거지? 라는 생각이 들었다. 단순히 ViewModel에서 Repository로 바로 연결시키면 안될까? 

이러한 의문점에 대해서 여러 개발자님들께 물어보고, 자료들을 찾아본 결과는 다음과 같았다. 

- Usecase가 repository와 유사할지라도 혹시 모를 확장성을 위해서 Usecase를 작성하는 것이 더 좋을 수 있다.
- 데이터를 받아와서 비즈니스 로직으로 새로운 Business Model을 창출하는 코드를 후에 넣을 수 있다.
- Usecase가 있는 도메인, 없는 도메인이 있다면 컨벤션상 안좋아 보일 수 있다.

이러한 상황에서 Usecase 를 작성하는 편으로 돌아서게 되었다.

## 3rd party, dependencies를 Usecase를 쓸 수 없다

도메인 레이어는 클린 아키텍처의 그림의 가장 내부에 있는 파트로서, 다른 레이어의 디펜던시가 존재하면 안되고, 결국에는 isolate이 되어야 한다. 도메인 레이어에는 Entities, Usecase, Repository Interfaces가 존재 한다. 좀 중요하게 생각이 들었던 것은 도메인 레이어는 다른 프로젝트에서도 바로 사용할 수 있게끔 만들어져 있어야한다고 적혀있었다. 그만큼 test는 하기 편할 것이고, 이는 결국 3rd party의 어떤 요소도 들어가면 안된다는 것을 확연하게 느끼게 해주는 문장이었다. 그리고 다른 dependencies도 필요하지 않은 곳이 usecase 라는 것을 알 수 있다.

### Momo project에서의 문제점

Momo 앱에서의 클린 아키텍처로 변경하는 과정에서 문제점이 있었던 것은 RealmSwift 와의 의존성 때문에 발생했다. Diary라는 class는 RealmSwift 에 존재하는 List 라는 자료형을 사용한다. 

```swift
class Diary: Object {
  
  @Persisted(primaryKey: true) var id: ObjectId
  
  @Persisted var date: Date
  
  @Persisted var emotion: String
 
  @Persisted var contentType: String
  
  @Persisted var qnaList: List<QNA>

}
```

Diary를 Save, Delete, Fetch할때의 모든 경우에, Diary 클래스를 사용해야하는 것은 물론이었다. 특히 Fetch나 Save에 있어서, presentation Layer에서 Usecase protocol로 받아서 사용할 때, ViewModel 에서 RealmSwift를 import 한다던지, 아니면 Usecase 구현체 내부에서 RealmSwift를 import 해야하는 불상사..! 가 발생한다. (RealmSwift는 DB를 위한 3rd party인데, Domain Layer, Presentation Layer에 있을 필요가 없으니..!!)

### 생각해본 해결책

1. **List(RealmSwift에서 제공)를 swift의 array로 decoding 하는 특정 객체를 만들어서 Usecase에 주입하는 방법**
    - **효과**
    
    DiaryEntity를 만들어서 Usecase에서 repository를 통해 Diary를 fetch 해왔다면, DiaryEntity로 변경해주는 객체를 protocol type으로 주입을 받을 수 있다. 이를 통해서 presentation Layer로 Business Model로 변경해서 내려보내고, presentation Layer와 usecase 내부에 RealmSwift를 import 할 필요가 없다는 것이다.
    
    - 다시 변경한 이유
    
    하지만 이 방법은 ‘Usecase는 어떠한 Dependencies도 가지지 않는다’ , ‘Usecase는 가장 빠른 Test를 짤 수 있다’, ‘다른 앱에서도 Usecase의 비즈니스 로직을 사용할 수 있어야 한다.’ 라는 규칙이 존재할 때, protocol로 주입을 하더라도, 즉각적인 test를 하기에는 조금 어려울 수 있다고 생각이 들었다. 
    
    그리고 결정적으로 변경하게 된 이유는 클린아키텍처 예제코드에서, repository 내부에서 DTO를 활용해서 정보를 받아온 것을 Entity로 변경해서 가져오는 방식이 대부분이었기 때문이다. 
    
2. **Repository에서 Entity로 변경해서 내려주기**
    
    클린아키텍처에서 DataLayer에서 DTO는 JSON 응답에서 도메인으로 매칭하기 위한 중간 개체로 사용된다고 설명한다. 아래 코드를 보자면, DTO를 Entity로 변경하는 코드가 존재한다.
    
    Repository에서 codable이 사용된 객체를 뽑아주는 것이 아닌, Entity로 변경해주는 작업을 진행한다. 이렇게 할 경우, Data Layer에서 사용되어야하는 helper class, 3rd party는 Data Layer에서 사용되기 때문에, 잘 나뉘었다고 생각이 들었다. 
    
    ```swift
    final class DefaultMoviesRepository {
        
        private let dataTransferService: DataTransfer
        
        init(dataTransferService: DataTransfer) {
            self.dataTransferService = dataTransferService
        }
    }
    
    extension DefaultMoviesRepository: MoviesRepository {
        
        public func fetchMoviesList(query: MovieQuery, page: Int, completion: @escaping (Result<MoviesPage, Error>) -> Void) -> Cancellable? {
            
            let endpoint = APIEndpoints.getMovies(with: MoviesRequestDTO(query: query.query,
                                                                         page: page))
            return dataTransferService.request(with: endpoint) { (response: Result<MoviesResponseDTO, Error>) in
                switch response {
                case .success(let moviesResponseDTO):
                    completion(.success(moviesResponseDTO.toDomain()))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
    
    // MARK: - Data Transfer Object (DTO)
    // It is used as intermediate object to encode/decode JSON response into domain, inside DataTransferService
    struct MoviesRequestDTO: Encodable {
        let query: String
        let page: Int
    }
    
    struct MoviesResponseDTO: Decodable {
        private enum CodingKeys: String, CodingKey {
            case page
            case totalPages = "total_pages"
            case movies = "results"
        }
        let page: Int
        let totalPages: Int
        let movies: [MovieDTO]
    }
    ...
    // MARK: - Mappings to Domain
    extension MoviesResponseDTO {
        func toDomain() -> MoviesPage {
            return .init(page: page,
                         totalPages: totalPages,
                         movies: movies.map { $0.toDomain() })
        }
    }
    ...
    ```
    
    > 예시코드 출처
    > 
    
    [DataRepository.swift](https://gist.github.com/kudoleh/34f24527e0cc8a77d6cbb4f5e6a17eeb#file-datarepository-swift)
    

## 변경사항

### 기존 코드

```swift
final class MomoDiaryUseCase: DiaryUseCase {
  
  private let repository: DiaryRepository
  private let realmCoder: RealmCoder
  
  init(repository: DiaryRepository, realmCoder: RealmCoder) {
    self.repository = repository
    self.realmCoder = realmCoder
  }

...
}

//MomoDiaryRepository.swift

func readDiaryDetail(date: Date) -> Observable<Diary?> {
    return diaryDataStore.read(date: date)
      .share()
  }
```

기존 코드에서는 RealmCoder라는 helper 객체를 사용하면서 Usecase에서 이를 Decoding 했고, Repository에서는 Diary를 바로 뽑아주는 형태였다. 

### 변경된 코드

```swift
//MomoDiaryRepository.swift

func readDiaryDetail(date: Date) -> Observable<DiaryEntity?> {
    return diaryDataStore.read(date: date).toDomain()
      .share()
  }
```

이렇게 도메인의 Entity로 변경을 먼저 한뒤에, usecase에서 받아 쓰는 형식으로 변경했다. 또한 response를 날리거나 DB에서 Search를 할때 만약에 Diary가 직접 필요하다면, 그때도 Repository에서 변경작업을 거쳐서 Repository에 주입되어있는 Datastorage나 NetworkService에 넘겨 줄 수 있도록 하였다.
