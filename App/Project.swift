import ProjectDescription
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains CustomTuist App target and CustomTuist unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let appProjectName = "CustomTuistApp"
let organizationName = "woin2ee"
let appProjectOptions: Project.Options = .options()
let appProjectPackages: [Package] = []
let appProjectSettings: Settings? = nil

let appProjectInfoPlist: [String: InfoPlist.Value] = [
    "UILaunchStoryboardName": "LaunchScreen"
]

// MARK: - Targets

let appTarget: Target = .init(
    name: appProjectName,
    platform: .iOS,
    product: .app,
    productName: nil, // nil 이면 `name` 과 같음
    bundleId: "com.woin2ee.\(appProjectName)",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .extendingDefault(with: appProjectInfoPlist),
    sources: "Sources/**",
    resources: "Resources/**",
    copyFiles: nil,
    headers: nil,
    entitlements: nil,
    scripts: [],
    dependencies: [],
    settings: nil,
    coreDataModels: [],
    environment: [:],
    launchArguments: [],
    additionalFiles: []
)
let appUnitTestTarget: Target = .init(
    name: "AppUnitTests",
    platform: .iOS,
    product: .unitTests,
    productName: nil,
    bundleId: "com.woin2ee.\(appProjectName)Tests",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .default,
    sources: "UnitTests/**",
    resources: nil,
    copyFiles: nil,
    headers: nil,
    entitlements: nil,
    scripts: [],
    dependencies: [.target(name: appProjectName)],
    settings: nil,
    coreDataModels: [],
    environment: [:],
    launchArguments: [],
    additionalFiles: []
)
let appProjectTargets: [Target] = [appTarget, appUnitTestTarget]

// MARK: - Project

let appProject = Project(
    name: appProjectName,
    organizationName: organizationName,
    options: appProjectOptions,
    packages: appProjectPackages,
    settings: appProjectSettings,
    targets: appProjectTargets,
    fileHeaderTemplate: nil,
    resourceSynthesizers: .default
)
