# iOS / CS (TIL)

> iOS 앱을 개발하거나, 리펙토링하면서 내가 찾는 버그들을 해결해나가는 과정을 적고 있습니다. 개인 토이프로젝트, 팀 프로젝트를 리펙토링하면서 메모리 누수 및 다양한 버그를 찾아내고 있습니다. 또한 이러한 repository로 다양한 사람들이 어떻게 버그를 고쳤는지 알고, 또한 iOS 앱 리펙터링을 하면서 어떻게? 왜? 했는지를 파악하면 좋겠다는 의미로 repository를 팝니다.
> 그리고 공부한 내용을 바탕으로 글을 쓴 내용을 정리합니다

## BUG🐛
- [클로저의 Memory Leak🚨](https://guttural-tumble-39b.notion.site/Memory-Leak-7546ddb167b541d7b5c02d97f6cdec64)
- [Cannot use mutating member on immutable value: 'self' is immutable 애러🚨](https://guttural-tumble-39b.notion.site/Cannot-use-mutating-member-on-immutable-value-self-is-immutable-6f9ed1a7705746818c4a8c43bd1d9a85)
- [변수의 형으로 @escapingClosure는 왜 안되는가?, Closure is already escaping in optional type argument🚨](https://guttural-tumble-39b.notion.site/Closure-is-already-escaping-in-optional-type-argument-6ad748c18b1047769171af8fb451372e)
- [Cell 내부에서 Contraint를 함부로 변경하면 오류 발생🚨](https://guttural-tumble-39b.notion.site/Cell-Constraint-279b1e4c163946b5849fee2665fe5fef)


## Pattern & Architecture
- [싱글톤에 대해서](https://github.com/pastapeter/Studying_iOS/tree/master/%EB%AC%B8%EB%B2%95/singleton)
- [Repository pattern](https://github.com/Moms-Touch/MVVM_STUDY/blob/main/Document/Repository%20Pattern.md)
- [의존성 주입 - DI Pattern을 어떻게 구성할까? Inversion of Convergence Container를 코드로 작성하기](https://github.com/pastapeter/iOS-BUG-FIX-STUDY/blob/master/%EC%9D%98%EC%A1%B4%EC%84%B1%20%EC%A3%BC%EC%9E%85/Objects%20%26%20Their%20Dependencies.md)
- [RIBs 스터디](https://github.com/pastapeter/RIBsTutorial)
- [클린아키택처 Part1, 어디까지가 Usecase, 도메인Layer 작성할때 고려한 점](https://github.com/pastapeter/iOS-BUG-FIX-STUDY-TIL-/blob/master/CleanArchitecture/CleanArchitecture_part1.md)



## Swift, UIkit
- [클로저, 클로저 캡처, 이스케이핑 클로저에 대해서](https://github.com/pastapeter/Studying_iOS/tree/master/%EB%AC%B8%EB%B2%95/closure)
- [비동기의 이해(비동기, DispatchGroup, DispatchSemaphore)](https://github.com/pastapeter/Studying_iOS/tree/master/BankManager_concurrency) 
- [내 폰에 파일 저장하기](https://guttural-tumble-39b.notion.site/ac11a000551d45ec97acd9a4ecea970d)
- [SceneDelegate not called, So What is SceneDelegate](https://github.com/pastapeter/iOS-BUG-FIX-STUDY-TIL-/blob/master/SceneDelegate%20not%20called.md)
- [Frame VS Bounds](https://guttural-tumble-39b.notion.site/Bounds-Frame-b242b5848c48499db9d8c5521db9fd4b)
- [Simulator VS Real Device](https://guttural-tumble-39b.notion.site/29d7405c75cb4d3d9f9b7f3e944a965b)
- [앱 화면의 콘텐츠를 표시하는 로직과 관리를 담당하는 객체? Viewcontroller에 대한 고찰(Except lifecycle)](https://guttural-tumble-39b.notion.site/ViewController-87943b7be2eb41aabc7d92b0a5c0955e)
- [앱 콘텐츠나 데이터 자체를 저장하는 특별한 객체는 뭐가 있고, 어떤 방식으로 객체를 정하는가(About FileSystem, UserDefault, Propertylist, Keychain, database)](https://guttural-tumble-39b.notion.site/00b77732c86447a4a9c8435d9375e868)
- [CollectionView Cell 최적화 크기 찾기](https://github.com/Moms-Touch/MOMO/wiki/collectionView-cell%EC%9D%98-%EC%B5%9C%EC%A0%81%ED%99%94-%ED%81%AC%EA%B8%B0-%EC%B0%BE%EA%B8%B0)
- [App thinning](https://guttural-tumble-39b.notion.site/App-thinning-cc2b9444268e40a29a6b145736854036)
- [UIApplicationMain()에 의해 생성되는 객체와 델리게이트](https://guttural-tumble-39b.notion.site/main-c-UIApplicationMain-b484fd5b7a214ec9ade185591a3d136c)
- [@main에 대해서](https://guttural-tumble-39b.notion.site/main-006e2bb0849f488eb209f9fb1207c99d)
- [Foreground vs Background](https://guttural-tumble-39b.notion.site/foreground-background-1988f2dca5534e5e898f2cd7a747fa30)
- [App state를 관리하는 AppDelegate(SceneDelegate)의 메서드](https://guttural-tumble-39b.notion.site/77b8729197a94496a35f52760c210485)
- [SceneDelegate, UIScene, UISceneSession, UIWindowScene](https://guttural-tumble-39b.notion.site/SceneDelegate-b64c0338b84244328ed35678e7ebc72a)
- [Unattached, Foreground-Inactive, Foreground-Active, Background, Suspended](https://guttural-tumble-39b.notion.site/Unattached-Foreground-Inactive-Foreground-Active-Background-Suspended-77fb48c20f8942698462a15c0c4f0ccd)
- [GCD API 동작 방식과 필요성](https://guttural-tumble-39b.notion.site/GCD-API-f371b438ade84212a581d9bac9c19139)
- [PresentingViewController as? UINavigationController](https://guttural-tumble-39b.notion.site/PresentingViewController-as-UINavigationController-aa39b0caae9d439ab03502f14997b663)
- [Thread Safe? How to get over with Thread not safe in GCD](https://guttural-tumble-39b.notion.site/Thread-Safe-How-to-get-over-with-race-Condition-cf91f528ec6040ce9f910a442b544a07)
- [Global DispatchQueue 의 Qos 에는 어떤 종류가 있는지, 각각 어떤 의미인지 설명하시오.](https://guttural-tumble-39b.notion.site/Global-DispatchQueue-Qos-309b305df0c0449a90dba3560bc46b8c)
- [병렬성 vs 동시성 in swift](https://guttural-tumble-39b.notion.site/vs-ed08d163559b453eb1734295a029d084)
- [UIResponder, Responder Chain](https://guttural-tumble-39b.notion.site/Responder-Responder-Chain-53a2298e4b5b49efb248e4b2471639c3)
- [Reference in Struct](https://guttural-tumble-39b.notion.site/81f440e935114d56afa2d50b390b3941)
- [Copy on Write vs Copy on assignment](https://guttural-tumble-39b.notion.site/Copy-on-write-vs-Copy-on-assignment-7e78b4c25a954beeaded441a73c29a62)
- [About App Bundle](https://guttural-tumble-39b.notion.site/App-Bundle-f2ef4cb312034c1892246af21f8f1a96)
- [WWDC16 Understanding Swift Performance](https://guttural-tumble-39b.notion.site/WWDC16-Understanding-Swift-performance-42f81acc476944dda3e38d20c8526da2)



## Test
- [Raywenderlich, TDD 책을 읽고서...](https://github.com/pastapeter/TDD_UnitTest_Study)

## Combine
 Raywenderlich, Combine 책을 읽고 정리하기


- [Hello Combine](https://guttural-tumble-39b.notion.site/Hello-Combine-b6301df0957846f7ac3e4e94c9bb4d01)
- [Publishers & Subscribers](https://guttural-tumble-39b.notion.site/Publishers-Subscribers-1a436e9e44bc4ddf940604b37dd2d4d1)

## Computer Science

### Software Engineering
- [SRP in iOS, Swift](https://guttural-tumble-39b.notion.site/SRP-Single-Responsibility-Principle-827c0726043748cd812004c4a34fa367)

### Computer Architecture
- [Performance](https://guttural-tumble-39b.notion.site/Performance-6b7e62b02a6941a381dc3c8e8ace221b)
- [ISA part1: Design Principles of MIPS](https://guttural-tumble-39b.notion.site/ISA-part1-design-principles-of-MIPS-f6ece2c83df7407090fa6830013930bf)
- [ISA part2: instructions of MIPS ISA](https://guttural-tumble-39b.notion.site/ISA-part2-instructions-of-MIPS-ISA-cffd9b3cd55c4fdd85602de35900f293)
- [Procedures](https://guttural-tumble-39b.notion.site/Procedures-1b86fd3f712c4674b25a66ae2192bfab)
- [MIPS memory allocation & Addressing](https://guttural-tumble-39b.notion.site/MIPS-memory-allocation-Addressing-1cc228aa8855429899c2aa345ae80bf4)
- [Arithmetic For Computers](https://guttural-tumble-39b.notion.site/Arithmetic-For-Computers-5887c6a98db44464b302f7e8d6198ac2)

