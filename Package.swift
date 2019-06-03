// swift-tools-version:5.0
// Copyright © 2017 Jack Maloney. All Rights Reserved.
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import PackageDescription

let package = Package(
    name: "Weak",
    products: [
        .library(name: "Weak", targets: ["Weak"])
    ],
    dependencies: [],
    targets: [
        .target(name: "Weak", path: "Sources"),
        .testTarget(name: "WeakTests", dependencies: ["Weak"], path: "Tests")
    ]
)
