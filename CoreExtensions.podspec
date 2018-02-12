#
# Be sure to run `pod lib lint VSSocialButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CoreExtensions'
  s.version          = '1.0.7'
  s.summary          = 'CoreExtensions - helpful extensions to use in each project.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
						Helpful extensions for arrays, enums, view controllers and more.
                       DESC

  s.homepage         = 'https://github.com/pffan91/CoreExtensions/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladyslav Semenchenko' => 'developer.semenchenko@gmail.com' }
  s.source           = { :git => 'https://github.com/pffan91/CoreExtensions.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/V_Semenchenko'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Extensions/**/*'

  # s.resource_bundles = {
  #   'VSSocialButton' => ['VSSocialButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.frameworks = 'Foundation'

end
