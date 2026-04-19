// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.6.2"
let checksum = "sha256:e396be243c6cdf933e1b8ab24c1afffc9a1507a3420e7733f56396ebfe11e78a"

let package = Package(
    name: "openssl-apple",
    products: [
        .library(
            name: "openssl-apple",
            targets: ["openssl"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/signalsoftwareltdvn/openssl-apple/releases/download/3.6.2/openssl.xcframework.zip",
            checksum: checksum
        ),
//https://github.com/signalsoftwareltdvn/openssl-apple/releases/download/3.6.2/openssl.xcframework.zip
        // local development
//        .binaryTarget(
//            name: "openssl",
//            path: "frameworks/openssl.xcframework.zip")
    ]
)
