import ProjectDescription
import ProjectDescriptionHelpers

let dependencies = Dependencies(
    carthage: [
    ],
    swiftPackageManager: [
        // RxSwift
        .remote(url: "https://github.com/ReactiveX/RxSwift.git",
                requirement: .upToNextMinor(from: "6.6.0")),
    ],
    platforms: [SHARED_DEPLOYMENT_TARGET.platform]
)
