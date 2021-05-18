Pod::Spec.new do |spec|

  spec.name         = "ALActionController"
  spec.version      = "0.0.9"
  spec.summary      = "Customizable actionSheet controller"

  spec.description  = <<-DESC
This library helps you custom your actionSheet controller.
                   DESC

  spec.homepage     = "https://github.com/alobanov11/ALActionController"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "alobanov11" => "alobanov11@gmail.com" }

  spec.ios.deployment_target = "11.0"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://github.com/alobanov11/ALActionController.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/**/*.{h,m,swift}"

end
