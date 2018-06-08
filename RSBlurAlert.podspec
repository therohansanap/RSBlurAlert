#
# Be sure to run `pod lib lint RSBlurAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RSBlurAlert'
  s.version          = '1.0.1'
  s.summary          = 'A macOS system like alert view for iOS.'

  s.description      = <<-DESC
A macOS system like alert view which has blur background, an alert image along with a short text describing the alert. This also contains some added control such as controlling auto-hide and the display time of alert view.
                       DESC

  s.homepage         = 'https://github.com/therohansanap/RSBlurAlert'
  s.screenshots      = 'https://image.ibb.co/b972TT/Simulator_Screen_Shot_i_Phone_X_2018_06_07_at_16_50_23.png', 'https://image.ibb.co/dgwJ2o/Simulator_Screen_Shot_i_Phone_X_2018_06_07_at_16_50_26.png'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Rohan Sanap' => 'sanaprohan10@gmail.com' }
  s.source           = { :git => 'https://github.com/therohansanap/RSBlurAlert.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/therohansanap'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0'

  s.source_files = 'RSBlurAlert/Classes/**/*'
  s.frameworks = 'UIKit'
end
