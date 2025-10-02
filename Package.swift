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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.23.0-full.framework.zip",
            checksum: "a55033ec7aec1a4dce0924d508de7a74a81eb082e1d2bff4f4c4647a0ddabbc8"
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
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
