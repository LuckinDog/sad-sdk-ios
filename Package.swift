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
            targets: ["SensorsAdvertisingWrapper"]),
    ],
    dependencies: [.package(name: "SensorsAnalyticsSDK", url: "https://github.com/sensorsdata/sa-sdk-ios-spm.git", from: "4.3.0")],
    targets: [
        .binaryTarget(
            name: "SensorsAdvertising",
            path: "SensorsAdvertising_AdServices/SensorsAdvertising.xcframework"
        ),
        .target(
            name: "SensorsAdvertisingWrapper",
            dependencies: [
                .target(name: "SensorsAdvertising"),
                .product(name: "SensorsAnalyticsSDK", package: "SensorsAnalyticsSDK")
            ],
            path: "SensorsAdvertising_AdServices"
        )
    ]
)
