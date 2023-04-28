// swift-tools-version: 5.7.1
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
