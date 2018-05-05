import PackageDescription

let package = Package(
    name: "DDD Swift Library",
    dependencies: [
        .Package(url: "https://github.com/AliSoftware/Dip.git", majorVersion: 5),
    ]
)
