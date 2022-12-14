#
# Be sure to run `pod lib lint SimpleTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleTools'
  s.version          = '0.1.7'
  s.summary          = 'Some tool\'s module for iOS Developer & Code with Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  开发效率工具类合集
  Done:
  这里是已经完成的
  Doing:
  这里是正在做的
  UserDefaultwrapper: wrapper + enumtoKeyPath，简单的向UserDefault中写入内容
  ToDo:
  这里是准备去做的
                       DESC

  s.homepage         = 'https://github.com/HuDaQian/SimpleTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HuDaQian' => '458331943@qq.com'}
  s.source           = { :git => 'https://github.com/HuDaQian/SimpleTools.git', :tag => s.version.to_s }
  s.social_media_url = 'https://hudaqian.github.io'

  s.platform = :ios
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.1'
    
  # UserDefaultWrapper
  s.subspec "UserDefaultWrapper" do |ss|
    
    ss.source_files = 'Source/UserDefaultWrapper/*.swift'
  end
  
  # # module simple desc
  #  s.subspec "EasyPopup" do |ss|
  #      ss.dependency 'SnapKit'
        
  #      ss.source_files = 'Sources/EasyPopup/*.swift'
  #  end
  
  # s.resource_bundles = {
  #   'SimpleTools' => ['SimpleTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
