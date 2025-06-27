// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "MyFramework",
  platforms: [
    .iOS(.v15), // или v13+, если без макросов и новых API
    .macOS(.v11)
  ],
  products: [
    .library(
      name: "MyFramework",
      targets: ["MyFramework"]),
  ],
  targets: [
    .target(
      name: "MyFramework",
      dependencies: []),
    .testTarget(
      name: "MyFrameworkTests",
      dependencies: ["MyFramework"]),
  ]
)
