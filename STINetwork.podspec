#
#  Be sure to run `pod spec lint STINetwork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "STINetwork"
  s.version      = "0.0.2"
  s.summary      = "1.自动生成model代码，并且非常简洁\n2.自动生成api接口调用代码，你要做的只是填充请求数据 \n3.请求的数据，自动反序列化成相对应的mode实例"

  s.description  = "STINetwork"

  s.homepage     = "https://github.com/i-phil/STINetwork"
  s.license      = "MIT"

  s.author             = { "philZhang" => "goo.gle@foxmail.com" }

  s.source       = { :git => "https://github.com/i-phil/STINetwork.git", :tag => "0.0.2" }

  s.source_files  = "STINetwork", "STINetwork/*.{h,m}", "STINetwork/http/STIHTTPNetwork/**/*.{h,m}", "STINetwork/http/vendor/AutoCoding/**/*.{h,m}"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.framework  = "Foundation"
  s.requires_arc = true
  s.dependency 'AFNetworking'
end
