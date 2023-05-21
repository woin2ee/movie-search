import ProjectDescription
import ProjectDescriptionHelpers

let appName = "MyCounter"
let appDeploymentTarget: DeploymentTarget = .iOS(targetVersion: "15.0", devices: .iphone)
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
let appInfoPlist: [String: InfoPlist.Value] = appBundleConfigurationInfoPlist
    .merging(appUserInterfaceInfoPlist) { $1 }
    .merging(appExecutionInfoPlist) { $1 }

// MARK: - Targets

let appTarget: Target = .makeAppTarget(
    name: appName,
    bundleId: "\(basicBundleID).\(appName)",
    deploymentTarget: appDeploymentTarget,
    infoPlist: .dictionary(appInfoPlist),
    entitlements: nil,
    dependencies: []
)
let appUnitTestTarget: Target = .makeUnitTestsTarget(
    name: "\(appName)UnitTests",
    bundleId: "\(basicBundleID).\(appName)UnitTests",
    deploymentTarget: appDeploymentTarget,
    dependencies: [.target(name: appName)]
)

// MARK: - Project

let appProject: Project = .makeProject(
    name: "App",
    targets: [appTarget, appUnitTestTarget],
    schemes: []
)
