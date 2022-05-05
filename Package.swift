// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SensorsAdvertising",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        .library(
            name: "SensorsAdvertising",
            targets: ["SensorsAdvertising"]),
    ],
    dependencies: [.package(url: "https://github.com/sensorsdata/sa-sdk-ios-spm.git", .upToNextMajor(from: "4.3.0"))],
    targets: [
        .binaryTarget(
            name: "SensorsAdvertising",
            path: "SensorsAdvertising_AdServices/SensorsAdvertising.xcframework"
        )
    ]
)
