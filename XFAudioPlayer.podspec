#
#  Be sure to run `pod spec lint XFAudioPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name             = 'XFAudioPlayer'
  s.version          = '0.1.0'
  s.summary          = 'this is a audio player sdk'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: this is a audio player sdk
                       DESC

  s.homepage         = 'https://github.com/xufengbj/XFAudioPlayer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xufeng' => 'xfncwu@163.com' }
  s.source           = { :git => 'https://github.com/xufengbj/XFAudioPlayer.git', :tag => s.version.to_s }
  s.social_media_url = 'http://blog.csdn.net/hanhailong18?viewmode=contents'

  s.ios.deployment_target = '7.0'

  s.source_files = 'XFAudioPlayer/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JKRouter' => ['JKRouter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
 end  