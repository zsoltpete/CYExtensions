Pod::Spec.new do |s|

  s.name         = "CYExtensions"
  s.version      = "0.0.1"
  s.summary      = "Eytension collection for better development"
  s.homepage     = "http://codeyard.eu"
  s.license      = {type: "MIT", text: "DO NOT COPY!"}
  s.author       = { "petez" => "pete.zsolt@codeyard.eu" }
  s.source       = { :git => "hhttps://github.com/zsoltpete/CYExtensions.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '8.0'
  s.source_files = 'Classes'
  s.frameworks = 'UIKit'
end
