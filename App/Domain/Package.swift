// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Domain",
  products: [
    .library(
      name: "RocketsClient",
      targets: ["RocketsClient"]),
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "RocketsClient",
      dependencies: []),
  ]
)
