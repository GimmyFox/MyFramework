// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MyFramework",
  platforms: [
    .iOS(.v15), // или v13+, если без макросов и новых API
  ],
  products: [
    .library(
      name: "MyFramework",
      targets: ["MyFramework"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kean/Nuke.git", from: "12.0.0")
  ],
  targets: [
    .target(
      name: "MyFramework",
      dependencies: [
        .product(name: "Nuke", package: "Nuke"),
        .product(name: "NukeUI", package: "Nuke")
      ]),
    .testTarget(
      name: "MyFrameworkTests",
      dependencies: ["MyFramework"]),
  ]
)
