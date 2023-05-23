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
                requirement: .upToNextMinor(from: "5.6.4"))
    ],
    platforms: [SHARED_DEPLOYMENT_TARGET.platform]
)
