import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName = TargetName.di
let dependencies: [TargetDependency] = [
    .external(name: ExternalDependencyName.swinject),
    .project(target: TargetName.ui,
             path: .relativeToRoot("\(APPLICATION_NAME)/\(TargetName.ui)")),
]

// MARK: - Targets

let frameworkTarget: Target = .makeFrameworkTarget(
    name: frameworkName,
    bundleId: "\(BASIC_BUNDLE_ID).\(frameworkName)",
    deploymentTarget: SHARED_DEPLOYMENT_TARGET,
    dependencies: dependencies
)

// MARK: - Project

let project: Project = .makeProject(
    name: frameworkName,
    targets: [frameworkTarget],
    schemes: [
        .makeFrameworkScheme(name: frameworkName),
    ]
)
