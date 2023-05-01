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

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let projectName = "CustomTuist"
let organizationName = "woin2ee.com"
let options: Project.Options = .options()
let packages: [Package] = []
let settings: Settings? = nil

let infoPlist: [String: InfoPlist.Value] = [
    "UILaunchStoryboardName": "LaunchScreen"
]
let appMainTarget: Target = .init(
    name: projectName,
    platform: .iOS,
    product: .app,
    productName: nil, // nil 이면 `name` 과 같음
    bundleId: "com.woin2ee.\(projectName)",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .extendingDefault(with: infoPlist),
    sources: "Targets/\(projectName)/Sources/**",
    resources: "Targets/\(projectName)/Resources/**",
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
let appTestTarget: Target = .init(
    name: "\(projectName)Tests",
    platform: .iOS,
    product: .unitTests,
    productName: nil,
    bundleId: "com.woin2ee.\(projectName)Tests",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .default,
    sources: "Targets/\(projectName)Tests/**",
    resources: nil,
    copyFiles: nil,
    headers: nil,
    entitlements: nil,
    scripts: [],
    dependencies: [.target(name: projectName)],
    settings: nil,
    coreDataModels: [],
    environment: [:],
    launchArguments: [],
    additionalFiles: []
)
let targets: [Target] = [appMainTarget, appTestTarget]

let schemes: [Scheme] = []

let additionalFiles: [FileElement] = []

let project = Project(
    name: projectName,
    organizationName: organizationName,
    options: options,
    packages: packages,
    settings: settings,
    targets: targets,
    schemes: schemes,
    fileHeaderTemplate: nil,
    additionalFiles: additionalFiles,
    resourceSynthesizers: .default
)
