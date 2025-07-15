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
            url: "https://mappableworld.s3.eu-west-3.amazonaws.com/MappableMobile-4.18.0-full.framework.zip",
            checksum: "5e0c7566ea520e85f2d2fac5b1174ee289ea8cc3041a3c62b956e50868f2b13e"
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
