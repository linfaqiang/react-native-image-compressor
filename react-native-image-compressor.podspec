require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name          = "react-native-image-compressor"
  s.version       = package["version"]
  s.summary       = package["description"]
  s.description   = "A native image compressor for React Native."
  s.homepage      = "https://github.com/linfaqiang/react-native-image-compressor.git"
  s.license       = "MIT"
  # s.license     = { :type => "MIT", :file => "../LICENSE" }
  s.authors       = { "compressor" => "react-native-image-compressor" }
  s.platform      = :ios, "9.0"
  s.source        = { :git => "https://github.com/linfaqiang/react-native-image-compressor.git"}

  s.source_files  = "ios/**/*.{h,m,swift}"
  s.requires_arc  = true

  s.dependency "React-Core"
  # s.dependency "..."
end
