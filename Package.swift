// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "swift-parsing",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "Parsing",
      targets: ["Parsing"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/pointfreeco/swift-case-paths", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "Parsing",
      dependencies: [
        .product(name: "CasePaths", package: "swift-case-paths"),
        .product(name: "CasePathsCore", package: "swift-case-paths"),
      ]
    ),
    .testTarget(
      name: "ParsingTests",
      dependencies: [
        "Parsing"
      ]
    ),
  ]
)
