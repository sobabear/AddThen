#
# Be sure to run `pod lib lint AddThen.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AddThen'
  s.version          = '1.2.0'
  s.summary          = '🎨 View instance sugar for Swift & UIKit'

  s.description      = <<-DESC
  # AddThen

  [![CI Status](https://img.shields.io/travis/stareta1202/AddThen.svg?style=flat)](https://travis-ci.org/stareta1202/AddThen)
  [![Version](https://img.shields.io/cocoapods/v/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
  [![License](https://img.shields.io/cocoapods/l/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)
  [![Platform](https://img.shields.io/cocoapods/p/AddThen.svg?style=flat)](https://cocoapods.org/pods/AddThen)

  🎨 View instance sugar for Swift & UIKit
  ## Example

  Make View code with AddThen
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

  Yongjun Lee, stareta1202@gmail.com
  Chanwoo Cho, https://github.com/GREENOVER

  ## License

  AddThen is available under the MIT license. See the LICENSE file for more info.
                       DESC

  s.homepage         = 'https://github.com/stareta1202/AddThen'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'stareta1202' => 'stareta1202@gmail.com' }
  s.source           = { :git => 'https://github.com/stareta1202/AddThen.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'Sources/AddThen/Classes/**/*'
  s.swift_version = '5.0'
  
end
