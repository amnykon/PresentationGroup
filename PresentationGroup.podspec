Pod::Spec.new do |s|

  # 1
  s.platform = :ios
  s.ios.deployment_target = '9.0'
  s.name = "PresentationGroup"
  s.summary = "PresentationGroup allows presenting and dismissing a group of ViewControllers."
  s.requires_arc = true

  # 2
  s.version = "0.1.0"

  # 3
#  s.license = { :type => "MIT", :file => "LICENSE" }

  # 4 - Replace with your name and e-mail address
  s.author = { "Micah Bunting" => "amnykon@gmail.com" }

  # 5 - Replace this URL with your own Github page's URL (from the address bar)
  s.homepage = "https://amnykon.github.io"

  # 6 - Replace this URL with your own Git URL from "Quick Setup"
  s.source = { :git => "https://github.com/amnykon/PresentationGroup", :tag => "#{s.version}"}

  # 7
  s.framework = "UIKit"

  # 8
  s.source_files = "PresentationGroup/**/*.{swift}"

end

