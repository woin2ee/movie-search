import ProjectDescription
import ProjectDescriptionHelpers

let appName = "\(APPLICATION_NAME)"
let appBundleConfigurationInfoPlist: [String: InfoPlist.Value] = [
    "CFBundleIdentifier": "$(PRODUCT_BUNDLE_IDENTIFIER)",
    "CFBundleVersion": "$(CURRENT_PROJECT_VERSION)",
    "CFBundleShortVersionString": "$(MARKETING_VERSION)",
]
let appUserInterfaceInfoPlist: [String: InfoPlist.Value] = [
    "UILaunchStoryboardName": "LaunchScreen",
]
let appExecutionInfoPlist: [String: InfoPlist.Value] = [
    "CFBundleExecutable": "$(EXECUTABLE_NAME)",
]
let dataAndStorageInfoPlist: [String: InfoPlist.Value] = [
    "NSAppTransportSecurity": [
        "NSExceptionDomains": [
            "kobis.or.kr": [
                "NSExceptionAllowsInsecureHTTPLoads": true
            ]
        ]
    ]
]
let appInfoPlist: [String: InfoPlist.Value] = appBundleConfigurationInfoPlist
    .merging(appUserInterfaceInfoPlist) { $1 }
    .merging(appExecutionInfoPlist) { $1 }
    .merging(dataAndStorageInfoPlist) { $1 }
let baseBuildSettings: SettingsDictionary = [
    "MARKETING_VERSION": "0.1.0",
    "CURRENT_PROJECT_VERSION": "1",
]
let dependencies: [TargetDependency] = [
    .project(target: TargetName.ui,
             path: .relativeToRoot("\(APPLICATION_NAME)/\(TargetName.ui)")),
    .project(target: TargetName.di,
             path: .relativeToRoot("\(APPLICATION_NAME)/\(TargetName.di)")),
]

// MARK: - Targets

let appTarget: Target = .makeAppTarget(
    name: appName,
    bundleId: "\(BASIC_BUNDLE_ID).\(appName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    infoPlist: .dictionary(appInfoPlist),
    entitlements: nil,
    dependencies: dependencies,
    settings: .settings(base: baseBuildSettings)
)

let appUnitTestTargetName = "\(appName)UnitTests"
let appUnitTestTarget: Target = .makeUnitTestsTarget(
    name: appUnitTestTargetName,
    bundleId: "\(BASIC_BUNDLE_ID).\(appUnitTestTargetName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: [.target(name: appName)]
)

// MARK: - Project

let appProject: Project = .makeProject(
    name: "App",
    targets: [appTarget, appUnitTestTarget],
    schemes: [
        .makeAppScheme(testAction: .targets(["\(appUnitTestTargetName)"])),
        .hideScheme(name: appUnitTestTargetName),
    ]
)
