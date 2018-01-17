#
# Be sure to run `pod lib lint LLBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LLBase'
  s.version          = '0.1.0'
  s.summary          = 'LLBase.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
custom used for LLBase
                       DESC

  s.homepage         = 'https://github.com/liuleiai1/LLBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'liuleiai1' => '383265136@qq.com' }
  s.source           = { :git => 'https://github.com/liuleiai1/LLBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#s.source_files = 'LLBase/Classes/**/*'

s.subspec 'Category' do |c|
    c.source_files = 'LLBase/Classes/Category/**/*'
end
s.subspec 'Base' do |b|
    b.source_files = 'LLBase/Classes/Base/**/*'
end
s.subspec 'Tool' do |t|
    t.source_files = 'LLBase/Classes/Tool/**/*'
end
s.subspec 'Network' do |n|
    n.source_files = 'LLBase/Classes/Network/**/*'
    n.dependency 'LLBase/Category'
    n.dependency 'AFNetworking', '~> 3.1.0'
    n.dependency 'SDWebImage', '~> 4.2.2'
end


  # s.resource_bundles = {
  #   'LLBase' => ['LLBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
