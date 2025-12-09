# AlicloudPush

Swift Package Manager distribution for Aliyun Mobile Service Push iOS SDK (CloudPushSDK) version 3.2.3.

## Usage

Add the package to your `Package.swift`:

```swift
.package(url: "https://github.com/your-org/AlicloudPush.git", from: "3.2.3")
```

Then add the `AlicloudPush` product to your target dependencies. The package wraps the binary `CloudPushSDK.xcframework` and pulls `AlicloudELS` (1.0.3) and `AlicloudUTDID` (1.6.1) as dependencies, linking against `CoreTelephony`, `SystemConfiguration`, `sqlite3`, and `resolv`.
