import PackageDescription

let package = Package(
    name: "jwt-keychain-demo",
    targets: [
        Target(name: "App", dependencies: ["AppLogic"])
    ],
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor.git", majorVersion: 1, minor: 5),
        .Package(url: "https://github.com/vapor/mysql-provider.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/nodes-vapor/jwt-keychain.git", majorVersion: 0, minor: 9)
    ],
    exclude: [
        "Config",
        "Database",
        "Localization",
        "Public",
        "Resources",
    ]
)

