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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.14.1-full.framework.zip",
            checksum: "15308a928cf8b348244cebf443e62cdbe5182dca99a3540a99f34cf14905b33d"
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
