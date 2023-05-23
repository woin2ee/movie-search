import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName = TargetName.ui
let dependencies: [TargetDependency] = [
    .external(name: ExternalDependencyName.rxSwift),
    .external(name: ExternalDependencyName.rxCocoa),
    .external(name: ExternalDependencyName.swinject),
    .project(target: TargetName.domain,
             path: .relativeToRoot("\(APPLICATION_NAME)/\(TargetName.domain)")),
    .project(target: TargetName.utility,
             path: .relativeToRoot("\(APPLICATION_NAME)/\(TargetName.utility)")),
]

// MARK: - Targets

let frameworkTarget: Target = .makeFrameworkTarget(
    name: frameworkName,
    bundleId: "\(BASIC_BUNDLE_ID).\(frameworkName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: dependencies
)

let frameworkUnitTestsTargetName = "\(frameworkName)UnitTests"
let frameworkUnitTestsTarget: Target = .makeUnitTestsTarget(
    name: frameworkUnitTestsTargetName,
    bundleId: "\(BASIC_BUNDLE_ID).\(frameworkUnitTestsTargetName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: [.target(name: frameworkName)]
)

// MARK: - Project

let project: Project = .makeProject(
    name: frameworkName,
    targets: [frameworkTarget, frameworkUnitTestsTarget],
    schemes: [
        .makeFrameworkScheme(
            name: frameworkName,
            testAction: .targets(
                ["\(frameworkUnitTestsTargetName)"],
                options: .options(
                    coverage: true,
                    codeCoverageTargets: ["\(frameworkName)"]
                )
            )
        ),
        .hideScheme(name: frameworkUnitTestsTargetName),
    ]
)
