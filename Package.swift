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
            url: "https://ios-repo.oss-cn-shanghai.aliyuncs.com/push/3.2.3/push.zip",
            checksum: "90a0df4c86b7d05e633877d622035494268b9774888d0f9584d88530d0a8b518"
        )
    ]
)
