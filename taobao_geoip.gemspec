# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'taobao_geoip/version'

Gem::Specification.new do |spec|
  spec.name          = "taobao_geoip"
  spec.version       = TaobaoGeoip::VERSION
  spec.authors       = ["NaixSpirit"]
  spec.email         = ["neverlandxy.naix@gmail.com"]
  spec.description   = %q{淘宝IP地址库}
  spec.summary       = %q{调用频率需小于10qps}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
