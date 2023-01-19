// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MathLibEx",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MathLibEx",
            targets: ["MathLibExTargets"]),
    ],
    targets: [
        .binaryTarget(name: "MathLibEx", path: "./Sources/MathLibEx.xcframework"),
        .binaryTarget(name: "AdditionCalculator", path: "./Sources/AdditionCalculator.xcframework"),
        .target(name: "MathLibExTargets", dependencies: [
                    .target(name: "MathLibEx", condition: .when(platforms: [.iOS])),
                    .target(name: "AdditionCalculator", condition: .when(platforms: [.iOS])),
                    ],
                    path:"./Sources/MathLibExTargets")
    ]
)
