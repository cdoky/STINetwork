#
#  Be sure to run `pod spec lint STINetwork.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "STINetwork"
  s.version      = "0.0.7"
  s.summary      = "1.自动生成model代码，并且非常简洁\n2.自动生成api接口调用代码，你要做的只是填充请求数据 \n3.请求的数据，自动反序列化成相对应的mode实例"

  s.description  = "STINetwork"

  s.homepage     = "https://github.com/i-phil/STINetwork"
  s.license      = "MIT"

  s.author             = { "philZhang" => "goo.gle@foxmail.com" }

  s.source       = { :git => "https://github.com/i-phil/STINetwork.git", :tag => "{s.version.to_s}", :submodules => true}

  s.framework  = "Foundation"
  s.requires_arc = true
  s.source_files = 'AFNetworking/*.{h,m}'
  s.dependency 'AFNetworking'

  s.public_header_files = "STINetwork/STINetworkHeader.h"
  s.source_files  = "STINetwork/STINetworkHeader.{h,m}"

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

    pch_STINetwork = <<-EOS


EOS

  s.prefix_header_contents = pch_STINetwork

  s.subspec 'Singleton' do |ss|
	ss.public_header_files = "STINetwork/Samurai_Singleton.h"
	ss.source_files  = "STINetwork/Samurai_Singleton.{h,m}"
  end

  s.subspec 'AutoCoding' do |ss|
  	ss.source_files = "STINetwork/http/vendor/AutoCoding/**/*.{h,m}"
    ss.public_header_files = "STINetwork/http/vendor/AutoCoding/**/*.h"
  end

  s.subspec 'Http' do |ss|
  	ss.dependency 'STINetwork/AutoCoding'
  	ss.dependency 'STINetwork/Singleton'
  	ss.source_files = "STINetwork/http/STIHTTPNetwork/**/*.{h,m}"
    ss.public_header_files = "STINetwork/http/STIHTTPNetwork/**/*.h"
  end

  

end
