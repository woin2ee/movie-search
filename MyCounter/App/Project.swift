import ProjectDescription
import ProjectDescriptionHelpers

let appName = "MyCounter"
let appDeploymentTarget: DeploymentTarget = .iOS(targetVersion: "15.0", devices: .iphone)
let appInfoPlist: [String: InfoPlist.Value] = [
    "UILaunchStoryboardName": "LaunchScreen"
]

// MARK: - Targets

let appTarget: Target = .makeAppTarget(
    name: appName,
    bundleId: "\(basicBundleID).\(appName)",
    deploymentTarget: appDeploymentTarget,
    infoPlist: .extendingDefault(with: appInfoPlist),
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
