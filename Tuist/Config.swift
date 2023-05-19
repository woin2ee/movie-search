import ProjectDescription

let config = Config(
    plugins: [
        .local(path: .relativeToManifest("../../Plugins/MyCounter")),
    ]
)

let organizationName = "woin2ee"
