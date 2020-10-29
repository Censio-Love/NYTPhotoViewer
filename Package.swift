// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NYTPhotoViewer",
    platforms: [
         .macOS(.v10_10),
         .iOS(.v9),
         .tvOS(.v9)
    ],
    products: [
        .library(
            name: "NYTPhotoViewer",
            type: .static,
            targets: ["NYTPhotoViewer"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/pinterest/PINRemoteImage.git", from: "3.0.2"),
    ],
    targets: [
        .target(
            name: "NYTPhotoViewer",
            dependencies: ["PINRemoteImage"],
            path: "NYTPhotoViewer",
            publicHeadersPath: "NYTPhotoViewer",
            cSettings: [
                .headerSearchPath("NYTPhotoViewer"),
            ]
        )
    ]
)
