// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TwilioLivePlayer",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "TwilioLivePlayer",
            targets: ["TwilioLivePlayer", "AmazonIVSPlayer"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "TwilioLivePlayer",
            url: "https://github.com/twilio/twilio-live-player-ios/releases/download/1.0.0-preview11/TwilioLivePlayer.xcframework.zip",
            checksum: "8b56d91451a2d771857000bab0e42696f0c9746c1087d485932cf0e1073901a8"
        ),
        .binaryTarget(
            name: "AmazonIVSPlayer",
            url: "https://player.live-video.net/1.5.0/AmazonIVSPlayer.xcframework.zip",
            checksum: ""
        )
    ]
)
