# Twilio Player SDK for iOS

This repository contains releases of Twilio's Player SDK for iOS. These releases can be consumed using Swift Package Manager, CocoaPods or manual integration into your project.


### Swift Package Manager

You can add Player SDK for iOS by adding the `https://github.com/twilio/twilio-player-ios` repository as a Swift Package.

In your Build Settings, you will also need to modify `Other Linker Flags` to include `-ObjC.`

As of the latest release of Xcode (currently 12.3), there is a [known issue](https://bugs.swift.org/browse/SR-13343) with consuming binary frameworks distributed via Swift Package Manager. The current workaround to this issue is to add a `Run Script Phase` to the `Build Phases` of your Xcode project. This `Run Script Phase` should come **after** the `Embed Frameworks` build phase. This new `Run Script Phase` should contain the following code:

```sh
find "${CODESIGNING_FOLDER_PATH}" -name '*.framework' -print0 | while read -d $'\0' framework
do
    codesign --force --deep --sign "${EXPANDED_CODE_SIGN_IDENTITY}" --preserve-metadata=identifier,entitlements --timestamp=none "${framework}"
done

```


### CocoaPods Integration

We support integration using CocoaPods as well. You can add Player SDK to your project using the following example Podfile:

```
source 'https://github.com/CocoaPods/Specs'

platform :ios, '11.0'

target 'TARGET_NAME' do
    pod 'TwilioPlayer', '1.0.0-preview1'
    pod 'AmazonIVSPlayer', '1.2.0'
end
```

Then run `pod install` to install the dependencies for your project.


### Manual Integration

See [manual installation](https://www.twilio.com/docs/media/ios-platform-overview#add-the-sdk) steps.


## Issues and Support

Please file any issues you find here on Github.

Please ensure that you are not sharing any [Personally Identifiable Information(PII)](https://www.twilio.com/docs/glossary/what-is-personally-identifiable-information-pii) or sensitive account information (API keys, credentials, etc.) when reporting an issue.

For general inquiries related to the Video SDK you can file a [support ticket](https://support.twilio.com/hc/en-us/requests/new).
