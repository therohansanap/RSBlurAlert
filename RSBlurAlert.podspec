#
# Be sure to run `pod lib lint RSBlurAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RSBlurAlert'
  s.version          = '1.1.0'
  s.summary          = 'A macOS system like alert view for iOS.'

  s.description      = <<-DESC
A macOS system like alert view which has blur background, an alert image along with a short text describing the alert. This also contains some added control such as controlling auto-hide and the display time of alert view.
                       DESC

  s.homepage         = 'https://github.com/therohansanap/RSBlurAlert'
  s.screenshots      = 'https://image.ibb.co/koSDa8/Simulator_Screen_Shot_i_Phone_X_2018_06_11_at_15_58_53.png', 'https://image.ibb.co/b8OVNo/Simulator_Screen_Shot_i_Phone_X_2018_06_11_at_15_58_55.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Rohan Sanap' => 'sanaprohan10@gmail.com' }
  s.source           = { :git => 'https://github.com/therohansanap/RSBlurAlert.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/therohansanap'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.source_files = 'RSBlurAlert/Classes/**/*'
#  s.resource = 'RSBlurAlert/Assets/**/*'
#  s.ios.resource_bundle = { 'RSBlurAlert' => 'RSBlurAlert/Assets/**/*.xcassets' }
  s.frameworks = 'UIKit'
end
