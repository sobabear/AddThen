# AddThen

[![CI Status](https://img.shields.io/travis/stareta1202/AddThen.svg?style=flat)](https://travis-ci.org/stareta1202/AddThen)
[![Version](https://img.shields.io/cocoapods/v/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
[![License](https://img.shields.io/cocoapods/l/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
[![Platform](https://img.shields.io/cocoapods/p/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)

🎨 View instance sugar for Swift & UIKit 
## Example

Make View code with **AddThen**
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

## Requirements

- iOS 9.0+ (11.0+ recommended)
- Xcode 12.0+
- Swfit 5.0 

## Installation

AddThen is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AddThen'
```

## Author

- LeFal, qwertyhj2@gmail.com @Mealigram
- stareta1202, stareta1202@gmail.com @JeongYookGak

## License

AddThen is available under the MIT license. See the LICENSE file for more info.
