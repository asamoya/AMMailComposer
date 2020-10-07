#
# Be sure to run `pod lib lint AMMailComposer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AMMailComposer'
  s.version          = '0.0.1'
  s.summary          = 'A MailComposer for iOS/iPadOS which supports Apple Mail app and Third party mail apps.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A MailComposer for iOS/iPadOS which supports Apple Mail app and Third party mail apps.
  Written in Swift 5.0.
  As you know, you can now change \'default mail app\' since iOS/iPadOS 14.
  In addition, you can uninstall Apple mail app.
  So we should throw \'mailto\' url scheme when we need to compose mail inside our app.
  AMMailComposer try wrapping this for simple one-liner experience.
                       DESC

  s.homepage         = 'https://github.com/asamoya/AMMailComposer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kaname ohara' => 'kaname.ohara@gmail.com' }
  s.source           = { :git => 'https://github.com/asamoya/AMMailComposer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.source_files = 'AMMailComposer/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AMMailComposer' => ['AMMailComposer/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
