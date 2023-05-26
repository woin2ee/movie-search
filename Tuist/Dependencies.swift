import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    carthage: [
    ],
    swiftPackageManager: [
        // RxSwift
        .remote(url: "https://github.com/ReactiveX/RxSwift.git",
                requirement: .upToNextMinor(from: "6.6.0")),
        // Alamofire
        .remote(url: "https://github.com/Alamofire/Alamofire.git",
                requirement: .upToNextMinor(from: "5.6.4")),
        // RxAlamofire
        .remote(url: "https://github.com/RxSwiftCommunity/RxAlamofire.git",
                requirement: .upToNextMinor(from: "6.1.0")),
        // Swinject
        .remote(url: "https://github.com/Swinject/Swinject.git",
                requirement: .upToNextMinor(from: "2.8.0")),
        // SnapKit
        .remote(url: "https://github.com/SnapKit/SnapKit.git",
                requirement: .upToNextMinor(from: "5.0.1")),
    ],
    platforms: [SHARED_DEPLOYMENT_TARGET.platform]
)
