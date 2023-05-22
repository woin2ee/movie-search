import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName = "Utility"

// MARK: - Targets

let frameworkTarget: Target = .makeFrameworkTarget(
    name: frameworkName,
    bundleId: "\(BASIC_BUNDLE_ID).\(frameworkName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: []
)
let frameworkUnitTestsTarget: Target = .makeUnitTestsTarget(
    name: "\(frameworkName)UnitTests",
    bundleId: "\(BASIC_BUNDLE_ID).\(frameworkName)UnitTests",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: [.target(name: frameworkName)]
)

// MARK: - Project

let project: Project = .makeProject(
    name: frameworkName,
    targets: [frameworkTarget, frameworkUnitTestsTarget],
    schemes: []
)
