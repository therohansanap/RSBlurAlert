# RSBlurAlert

[![CI Status](https://img.shields.io/travis/therohansanap/RSBlurAlert.svg?style=flat)](https://travis-ci.org/therohansanap/RSBlurAlert)
[![Version](https://img.shields.io/cocoapods/v/RSBlurAlert.svg?style=flat)](https://cocoapods.org/pods/RSBlurAlert)
[![License](https://img.shields.io/cocoapods/l/RSBlurAlert.svg?style=flat)](https://cocoapods.org/pods/RSBlurAlert)
[![Platform](https://img.shields.io/cocoapods/p/RSBlurAlert.svg?style=flat)](https://cocoapods.org/pods/RSBlurAlert)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

RSBlurAlert is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RSBlurAlert'
```

## Usage

Import the module in file where you wish to use this alert:
```
import RSBlurAlert
```
After that initialize  it and simply set it's properties.
```
let blurAlert = RSBlurAlertController()
blurAlert.alertTitle = "Attention"
blurAlert.alertDetail = "Describe the alert to the user using this so that user gets some idea."
blurAlert.alertImage = UIImage(named: "warning")
```
Along with this you can also use various customization options:

• This propety will help you keep the alert visible for customized time in seconds if you require so.
```
blurAlert.alertVisibleTime = 5
```

• This property will help you switch off the auto-hiding feature. If set to false, alert will be dismissed by user's tap on screen.
```
blurAlert.autoHide = false
```

• Presenting alert is as simple as presenting any view controller. Just present is without animation:
```
present(blurAlert, animated: false, completion: nil)
```

### **Note:**
None of the above mentioned properties are compulsory or required. They are optional. Defaults are set to give enough functionality. I highly encourage to download the repo and have a look at Example project. All possibilites and features are describes there in easiest of context.

## Author

Rohan Sanap, sanaprohan10@gmail.com

Twitter - [@therohansanap](https://twitter.com/TheRohanSanap)

### Credit where it's due

I started learning to make reusable frameworks and how to distribute them via Cocoapods. I stumbled upon following [article](https://medium.com/flawless-app-stories/getting-started-with-reusable-frameworks-for-ios-development-f00d74827d11).

This article is where my Idea came from. I decided to implement the same UI but with completely different approach and with alot of customization capabilites and hence RSBlurAlert was born

## License

RSBlurAlert is available under the MIT license. See the LICENSE file for more info.
