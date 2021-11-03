# AddThen

[![CI Status](https://img.shields.io/travis/stareta1202/AddThen.svg?style=flat)](https://travis-ci.org/stareta1202/AddThen)
[![Version](https://img.shields.io/cocoapods/v/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
[![License](https://img.shields.io/cocoapods/l/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
[![Platform](https://img.shields.io/cocoapods/p/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)

🎨 View instance sugar for Swift & UIKit 
## Example

Add UIView & UIViewController code with **AddThen**
```swift

let label = UILabel()
label.backgroundColor = .red
label.text = "Hello, World"

...

view.addSubview(label)
```

This is equivalent to :
```swift
let label = UILabel()

...

view.add(label) {
  $0.backgroundColor = .red
  $0.text = "Hello, World!"
}

```
Also very useful with SnapKit

```swift
let label = UILabel()

...

view.add(label) {
  $0.backgroundColor = .red
  $0.text = "Hello, World!"
  
  $0.snp.makeConstraints {
    $0.edges.equalToSuperview()
  }
}

```
## Requirements

- iOS 9.0+ (11.0+ recommended)
- Xcode 12.0+
- Swfit 5.0 

## Installation

AddThen is available through [CocoaPods](https://cocoapods.org) & SPM. To install
it, simply add the following line to your Podfile:

### cocoapod

```ruby
pod 'AddThen'
```
### Swift Package Manager
```swift
import PackageDescription

let package = Package(
  name: "MyApp",
  dependencies: [
    .package(url: "https://github.com/stareta1202/AddThen", .upToNextMajor(from: "1.0.1")),
  ]
)
```
## Author

- Yongjun Lee, stareta1202
- Chanwoo Cho, [GREENOVER](https://github.com/GREENOVER)

## License

AddThen is available under the MIT license. See the LICENSE file for more info.
