// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PythonKit",
    products: [
        .library(
            name: "PythonKit",
            targets: ["PythonKit"]
        )
    ],
    targets: [
        .target(
            name: "PythonKit",
            path: "PythonKit"
        ),
        .testTarget(
            name: "PythonKitTests",
            dependencies: ["PythonKit"],
            resources: [.process("Resources")]
        ),
    ]
)
