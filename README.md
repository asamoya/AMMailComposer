# AMMailComposer

[![CI Status](https://img.shields.io/travis/asamoya/AMMailComposer.svg?style=flat)](https://travis-ci.org/asamoya/AMMailComposer)
[![Version](https://img.shields.io/cocoapods/v/AMMailComposer.svg?style=flat)](https://cocoapods.org/pods/AMMailComposer)
[![License](https://img.shields.io/cocoapods/l/AMMailComposer.svg?style=flat)](https://cocoapods.org/pods/AMMailComposer)
[![Platform](https://img.shields.io/cocoapods/p/AMMailComposer.svg?style=flat)](https://cocoapods.org/pods/AMMailComposer)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
iOS 12 and later

## Installation

AMMailComposer is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AMMailComposer'
```

## Usage

#### Informatio property list
Add 'mailto' value to LSApplicatioQueriesSchemes key in informatio property list.

#### Launch composer
``` Swift
MailComposer.shared.compose(in: ViewController.self, to: "xxx@gmail.com")
```
See attached sample project for more detail.


## Author

kaname surya, kaname.ohara@gmail.com

## License

AMMailComposer is available under the MIT license. See the LICENSE file for more info.
