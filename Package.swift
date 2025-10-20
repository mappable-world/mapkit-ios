// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "MappableMobileFull",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "MappableMobileFull",
            type: .static,
            targets: [
                "MappableMobileFull",
                "MappableMobileFullResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MappableMobileFull",
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.25.0-full.framework.zip",
            checksum: "96e1ad95d6dd9536b6311bd7608a0b272fc8b1281551866120a30d5a313554ce"
        ),
        .target(
            name: "MappableMobileFullResources",
            path: "Resources",
            resources: [.process("Contents")],
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
