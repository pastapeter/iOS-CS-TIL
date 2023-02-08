iOS / CS (TIL)

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
- [AnyObject](https://guttural-tumble-39b.notion.site/AnyObject-7e20702e3b7542aa91c0df384cb1e882)
- [Optional](https://guttural-tumble-39b.notion.site/Optional-Enum-bc0497c125b14ba89b0d45a129dd42f5)
- [ARC](https://guttural-tumble-39b.notion.site/ARC-91ae3cb19c3648d685f8ff7526b2c83b)
- [Subscripts](https://guttural-tumble-39b.notion.site/Subscripts-96db52b645414155b5ab40b727cb3595)
- [KVO](https://guttural-tumble-39b.notion.site/KVO-604f25ddbb2a42b6aa9e60b75c4b9c9c)
- [Delegate VS Notification](https://guttural-tumble-39b.notion.site/Delegate-VS-Notification-8759c6971fd24fdb84e67ac69aa6eac9)
- [동기/비동기 방식에서 최소 Thread갯수 in Swift](https://guttural-tumble-39b.notion.site/Thread-in-Swift-a675003d7d5546c19eb626fd1b6e2ba0)
- [MVC in Apple](https://guttural-tumble-39b.notion.site/MVC-07c10becaedc489db0968acceda883fd)


## WWDC
- [WWDC16 Understanding Swift Performance](https://guttural-tumble-39b.notion.site/WWDC16-Understanding-Swift-performance-42f81acc476944dda3e38d20c8526da2)
- [WWDC22 Embracing Swift Generics](https://guttural-tumble-39b.notion.site/WWDC22-Embracing-Swift-Generics-673f11ee58ff4e4487d0c37a31f9ec42)
- [WWDC21 Meet Async-Await in Swift](https://guttural-tumble-39b.notion.site/Meet-Async-Await-f9d9cbb113d3409fa313450193c30f09)
- [WWDC21 Explore structured concurrency in swift](https://guttural-tumble-39b.notion.site/WWDC21-Explore-structured-concurrency-in-Swift-1c5121067c06405abba35fa7ed7579c1)


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
- [Pipeline Overview](https://guttural-tumble-39b.notion.site/Pipelining-Overview-cb2be28afd854918931396f40fbacf2c)
- [Pipeline - data Hazards](https://guttural-tumble-39b.notion.site/Pipelining-Overview-cb2be28afd854918931396f40fbacf2c)
- [Cache Memory Overview](https://guttural-tumble-39b.notion.site/Cache-Memory-Overview-c43f879e9b404592983056ebab57ec29)
- [Cache - Improving Cache Performances](https://guttural-tumble-39b.notion.site/Cache-Improving-Cache-Performance-34fc51cdf9144497b06445636f606a43)

### OS
- [System Structure & Program Execution](https://guttural-tumble-39b.notion.site/System-Structure-Program-Execution-cf386923002a439993838255e0847231)
- [Process(Context Switching, Status, PCB)](https://guttural-tumble-39b.notion.site/Process-Context-Switch-Status-PCB-03585c22b37447eab7971a30866ffa1d)
- [Thread](https://guttural-tumble-39b.notion.site/Process-Thread-e94715bf08824cfa976c838cd5d50f97)
- [Process Management](https://guttural-tumble-39b.notion.site/Process-Management-979678d5fbae445d964103af6565600b)
- [CPU Scheduling](https://guttural-tumble-39b.notion.site/CPU-2b9d3ee08d2a4aaa891ba48a8f01df66)
- [IPC](https://guttural-tumble-39b.notion.site/IPC-eb7b51af50fc44f9a5c1a278cb38ebcd)
- [인터럽트 처리](https://guttural-tumble-39b.notion.site/2fe957d0b1714670834bf8a4d737ce66)
- [프로세스 동기화](https://guttural-tumble-39b.notion.site/Process-Synchronization-a498080c0d2d44c58656e50e0ff5597d)
- [Semaphore](https://guttural-tumble-39b.notion.site/Process-Synchronization-Semaphore-8f8d8ef3b2d048a7a32ba44fa6500ee5)



## Database
- [DB key](https://guttural-tumble-39b.notion.site/d6e74c24fe844900805733ec6e66632f)
- [매우 중요한 index](https://guttural-tumble-39b.notion.site/Index-in-Database-4499f9405d4b43f6bb69b00904a2f4fe)



### Network
- [HTTP의 버전별 발전과정과 각각의 차이 + HTTP/2.0](https://guttural-tumble-39b.notion.site/HTTP-HTTP2-0-5aaa9b70eeac43498cf41cddf1410dc2)
- [공유기 작동원리](https://guttural-tumble-39b.notion.site/bd28a2a2ca65406586c3e58d63f32c8e)

### General
[비대칭 암호화란](https://guttural-tumble-39b.notion.site/33a6ecc7c07546bea349e0ec8bb0431b)
