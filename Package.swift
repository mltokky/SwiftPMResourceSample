// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPMResourceSample",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SwiftPMResourceSample",
            dependencies: [],
            resources: [
                .copy("Data"),  // ← `Sources/SwiftPMResourceSample/Data/` 配下のファイルを読み込む
                .process("Data2"),  // ← Data2ディレクトリ内のファイル全てを展開する
            ]
        ),
        .testTarget(
            name: "SwiftPMResourceSampleTests",
            dependencies: ["SwiftPMResourceSample"]),
    ]
)
