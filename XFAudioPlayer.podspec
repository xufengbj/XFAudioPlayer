#
#  Be sure to run `pod spec lint XFAudioPlayer.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
s.name = 'XFAudioPlayer's.version = '0.1.0'
s.license = 'MIT'
s.summary = '音频SDK'
s.homepage = 'https://github.com/xufengbj/XFAudioPlayer'
s.authors = { 'mcmore' => 'ljcoder@163.com' }
s.source = { :git => "https://github.com/xufengbj/XFAudioPlayer.git", :tag => "0.1.0"}
s.requires_arc = trues.ios.deployment_target = '8.0'
s.source_files = "XFAudioPlayer/*.{h,m}"
s.frameworks = 'UIKit'
end
