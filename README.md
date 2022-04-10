# iOS BUG FIX & Refactor & STUDY(TIL)

> iOS 앱을 개발하거나, 리펙토링하면서 내가 찾는 버그들을 해결해나가는 과정을 적고 있습니다. 개인 토이프로젝트, 팀 프로젝트를 리펙토링하면서 메모리 누수 및 다양한 버그를 찾아내고 있습니다. 또한 이러한 repository로 다양한 사람들이 어떻게 버그를 고쳤는지 알고, 또한 iOS 앱 리펙터링을 하면서 어떻게? 왜? 했는지를 파악하면 좋겠다는 의미로 repository를 팝니다.
> 그리고 공부한 내용을 바탕으로 글을 쓴 내용을 정리합니다

## Content

- Why
- What

## Why

### 1. iOS 앱을 개발하면서 버그를 찾는데, 많은 부분이 기본기와 관련이 있다

iOS 앱을 개발하거나, 리펙토링하면서 내가 찾은 버그들을 해결해나가는 과정에서, 많은 부분이 내 기본기 부족이라는 것을 느낀다. 


### 2. 버그를 찾으면서 기본기 다지기가 가능하다!

iOS 앱에서 메모리 누수, 특정 기능이 잘못쓰이고 있는 것을 알고, 그 개념을 다시 한번 파악하면서 공부를 할 수 있다.

### 3. 스터디 정리하기

iOS 를 공부하면서 혼자 했던 스터디, 스터디 팀원들과 함께 했던 스터디를 하면서 작성한 글을 정리합니다.

### 4. 성장하기

나도 버그를 잡으면서 성장하고, 다른 사람들도 이 글을 보고 같이 성장하고, 이 글에 같이 오류 잡은 내용도 올려줘서 같이 하나의 레포를 만들면 좋을 것 같다.

## What
### BUG
- [클로저의 Memory Leak](https://guttural-tumble-39b.notion.site/Memory-Leak-7546ddb167b541d7b5c02d97f6cdec64)
- [Cannot use mutating member on immutable value: 'self' is immutable 애러](https://guttural-tumble-39b.notion.site/Cannot-use-mutating-member-on-immutable-value-self-is-immutable-6f9ed1a7705746818c4a8c43bd1d9a85)
- [변수의 형으로 @escapingClosure는 왜 안되는가?, Closure is already escaping in optional type argument](https://guttural-tumble-39b.notion.site/Closure-is-already-escaping-in-optional-type-argument-6ad748c18b1047769171af8fb451372e)
- [Cell 내부에서 Contraint를 함부로 변경하면 오류 발생🚨](https://guttural-tumble-39b.notion.site/Cell-Constraint-279b1e4c163946b5849fee2665fe5fef)


### Pattern & Architecture
- [싱글톤에 대해서](https://github.com/pastapeter/Studying_iOS/tree/master/%EB%AC%B8%EB%B2%95/singleton)
- [Repository pattern](https://github.com/Moms-Touch/MVVM_STUDY/blob/main/Document/Repository%20Pattern.md)
- [의존성 주입 - DI Pattern을 어떻게 구성할까? Inversion of Convergence Container를 코드로 작성하기](https://github.com/pastapeter/iOS-BUG-FIX-STUDY/blob/master/%EC%9D%98%EC%A1%B4%EC%84%B1%20%EC%A3%BC%EC%9E%85/Objects%20%26%20Their%20Dependencies.md)
- [RIBs 스터디](https://github.com/pastapeter/RIBsTutorial)
- [클린아키택처 Part1, 어디까지가 Usecase, 도메인Layer 작성할때 고려한 점](https://github.com/pastapeter/iOS-BUG-FIX-STUDY-TIL-/blob/master/CleanArchitecture/CleanArchitecture_part1.md)



### Swift, UIkit
- [클로저, 클로저 캡처, 이스케이핑 클로저에 대해서](https://github.com/pastapeter/Studying_iOS/tree/master/%EB%AC%B8%EB%B2%95/closure)
- [비동기의 이해](https://github.com/pastapeter/Studying_iOS/tree/master/BankManager_concurrency) 
- [내 폰에 파일 저장하기](https://guttural-tumble-39b.notion.site/ac11a000551d45ec97acd9a4ecea970d)



### Test
- [Raywenderlich, TDD 책을 읽고서...](https://github.com/pastapeter/TDD_UnitTest_Study)
