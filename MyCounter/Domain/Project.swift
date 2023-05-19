import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName = "Domain"
let frameworkDeploymentTarget: DeploymentTarget = .iOS(targetVersion: "15.0", devices: .iphone)

// MARK: - Targets

let frameworkTarget: Target = .makeFrameworkTarget(
    name: frameworkName,
    bundleId: "\(basicBundleID).\(frameworkName)",
    deploymentTarget: frameworkDeploymentTarget,
    dependencies: []
)
let frameworkUnitTestsTarget: Target = .makeUnitTestsTarget(
    name: "\(frameworkName)UnitTests",
    bundleId: "\(basicBundleID).\(frameworkName)UnitTests",
    deploymentTarget: frameworkDeploymentTarget,
    dependencies: [.target(name: frameworkName)]
)

// MARK: - Project

let project: Project = .makeProject(
    name: frameworkName,
    targets: [frameworkTarget, frameworkUnitTestsTarget],
    schemes: []
)
