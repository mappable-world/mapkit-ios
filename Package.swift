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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.29.0-full.framework.zip",
            checksum: "5cc543d4646e5d74ebc36b4628402115a0a9362466cb9903549be3890f9ead26"
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
