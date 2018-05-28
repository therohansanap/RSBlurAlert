#
# Be sure to run `pod lib lint RSBlurAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RSBlurAlert'
  s.version          = '0.1.0'
  s.summary          = 'A iOS system like alert view.'

  s.description      = <<-DESC
A iOS system like alert view which has blur background, an alert image along with a short text describing the alert.
                       DESC

  s.homepage         = 'https://github.com/therohansanap/RSBlurAlert'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'therohansanap' => 'sanaprohan10@gmail.com' }
  s.source           = { :git => 'https://github.com/therohansanap/RSBlurAlert.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/therohansanap'

  s.ios.deployment_target = '10.0'

  s.source_files = 'RSBlurAlert/Classes/**/*'
  
  # s.resource_bundles = {
  #   'RSBlurAlert' => ['RSBlurAlert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
