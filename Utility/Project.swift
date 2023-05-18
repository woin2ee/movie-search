import ProjectDescription

let utilityProjectName = "CustomTuistUtility"
let organizationName = "woin2ee"
let utilityProjectOptions: Project.Options = .options()
let utilityProjectPackages: [Package] = []
let utilityProjectSettings: Settings? = nil

let utilityProjectInfoPlist: [String: InfoPlist.Value] = [:]

// MARK: - Targets

let utilityTarget: Target = .init(
    name: utilityProjectName,
    platform: .iOS,
    product: .framework,
    productName: nil, // nil 이면 `name` 과 같음
    bundleId: "com.woin2ee.\(utilityProjectName)",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .extendingDefault(with: utilityProjectInfoPlist),
    sources: "Sources/**",
    resources: nil,
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
let utilityUnitTestTarget: Target = .init(
    name: "UnitTests",
    platform: .iOS,
    product: .unitTests,
    productName: nil,
    bundleId: "com.woin2ee.\(utilityProjectName)Tests",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .default,
    sources: "UnitTests/**",
    resources: nil,
    copyFiles: nil,
    headers: nil,
    entitlements: nil,
    scripts: [],
    dependencies: [.target(name: utilityProjectName)],
    settings: nil,
    coreDataModels: [],
    environment: [:],
    launchArguments: [],
    additionalFiles: []
)
let utilityProjectTargets: [Target] = [utilityTarget, utilityUnitTestTarget]

// MARK: - Project

let utilityProject = Project(
    name: utilityProjectName,
    organizationName: organizationName,
    options: utilityProjectOptions,
    packages: utilityProjectPackages,
    settings: utilityProjectSettings,
    targets: utilityProjectTargets,
    fileHeaderTemplate: nil,
    resourceSynthesizers: .default
)
