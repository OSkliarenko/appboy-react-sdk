require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name           = package['name']
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.license        = package['license']
  s.author         = package['author']
  s.homepage       = package['homepage']
  s.source         = { :git => 'git+https://github.com/Appboy/appboy-react-sdk.git', :tag => s.version }

  s.requires_arc   = true
  s.platforms    = { :tvos => "11.0" }
  s.swift_version = '4.0'

  s.preserve_paths = 'LICENSE.md', 'README.md', 'package.json', 'index.js'
  s.source_files   = 'iOS/**/*.{h,m}'

  s.dependency 'Appboy-tvOS-SDK', '~> 4.3.2'
  s.dependency 'React'
end
