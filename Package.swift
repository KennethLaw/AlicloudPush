// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AlicloudPush",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "AlicloudPush",
            targets: ["AlicloudPush"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/KennethLaw/AlicloudELS.git", from: "1.0.3"),
        .package(url: "https://github.com/KennethLaw/AlicloudUTDID.git", from: "1.6.1")
    ],
    targets: [
        .target(
            name: "AlicloudPush",
            dependencies: [
                "CloudPushSDK",
                .product(name: "AlicloudELS", package: "AlicloudELS"),
                .product(name: "AlicloudUTDID", package: "AlicloudUTDID")
            ],
            linkerSettings: [
                .linkedFramework("CoreTelephony"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("sqlite3"),
                .linkedLibrary("resolv")
            ]
        ),
        .binaryTarget(
            name: "CloudPushSDK",
            url: "https://github.com/KennethLaw/AlicloudPush/releases/download/3.2.3/CloudPushSDK.xcframework.zip",
            checksum: "1876a366e997aae0cdb1bac19ae5c132799cbca689f25140ca050001a88b3e0d"
        )
    ]
)
