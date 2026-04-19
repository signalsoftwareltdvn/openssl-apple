// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let filename = "openssl.xcframework.zip"
let version = "3.6.2.1"
let checksum = "c4d163e6035a51e3f49edb9daf935466176818181a169906ae3731102cfe84fe"

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
            url: "https://github.com/signalsoftwareltdvn/openssl-apple/releases/download/3.6.2.1/openssl.xcframework.zip",
            checksum: checksum
        ),
        //https://github.com/signalsoftwareltdvn/openssl-apple/releases/download/3.6.2.1/openssl.xcframework.zip
//https://github.com/signalsoftwareltdvn/openssl-apple/releases/download/3.6.2/openssl.xcframework.zip
        // local development
//        .binaryTarget(
//            name: "openssl",
//            path: "frameworks/openssl.xcframework.zip")
    ]
)
