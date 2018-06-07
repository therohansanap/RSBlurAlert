#
# Be sure to run `pod lib lint RSBlurAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RSBlurAlert'
  s.version          = '1.0.0'
  s.summary          = 'A macOS system like alert view for iOS.'

  s.description      = <<-DESC
A macOS system like alert view which has blur background, an alert image along with a short text describing the alert. This also contains some added control such as controlling auto-hide and the display time of alert view.
                       DESC

  s.homepage         = 'https://github.com/therohansanap/RSBlurAlert'
  s.screenshots      = 'https://www.dropbox.com/s/cphz90gdy4frhoi/Simulator%20Screen%20Shot%20-%20iPhone%20X%20-%202018-06-07%20at%2016.50.23.png?dl=0', 'https://www.dropbox.com/s/mqs9e4s7ukghco8/Simulator%20Screen%20Shot%20-%20iPhone%20X%20-%202018-06-07%20at%2016.50.26.png?dl=0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'therohansanap' => 'sanaprohan10@gmail.com' }
  s.source           = { :git => 'https://github.com/therohansanap/RSBlurAlert.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/therohansanap'

  s.ios.deployment_target = '10.0'

  s.source_files = 'RSBlurAlert/Classes/**/*'
  
  s.resource_bundles = {
    'RSBlurAlert' => ['RSBlurAlert/Assets/**/*.{xcassets}']
  }

  s.frameworks = 'UIKit'
end
