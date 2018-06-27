Pod::Spec.new do |s|
  s.name         = "CatAlertController"
  s.version      = "0.1.1"
  s.summary      = "Use UIAlertController like the boss."
  s.description  = <<-DESC
  CatAlertController is a high level manager object for UIAlertController.
                   DESC
  s.homepage         = 'https://github.com/ImKcat/CatAlertController'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kcat' => 'kcatdeveloper@icloud.com' }
  s.source           = { :git => 'https://github.com/ImKcat/CatAlertController.git', :tag => s.version.to_s }
  s.social_media_url = 'https://imkcat.com'

  s.ios.deployment_target = "8.0"

  s.requires_arc = true
  s.source_files = 'Sources/**/*.{h,c,swift}'
end
