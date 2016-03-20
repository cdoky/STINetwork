#
#  Be sure to run `pod spec lint STINetwork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "STINetwork"
  s.version      = "0.0.1"
  s.summary      = "A short description of STINetwork."

  s.description  = <<-DESC
                   DESC

  s.homepage     = "https://github.com/iphil-cc/STINetwork"
  s.license      = "MIT (example)"

  s.author             = { "philZhang" => "goo.gle@foxmail.com" }

  s.source       = { :git => "https://github.com/iphil-cc/STINetwork.git", :tag => "0.0.1" }

  s.source_files  = "STINetwork", "STINetwork/**/*.{h,m}"

  s.framework  = "Foundation"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
