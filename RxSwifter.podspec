Pod::Spec.new do |s|
  s.name             = 'RxSwifter'
  s.version          = '0.6.0'
  s.summary          = 'Wrapper library of Swifter using RxSwift.'
  s.description      = <<-DESC
Wrapper library of Swifter using RxSwift.
Provide observable response.
                       DESC

  s.homepage         = 'https://github.com/noppefoxwolf/RxSwifter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '🦊Tomoya Hirano' => 'noppelabs@gmail.com' }
  s.source           = { :git => 'https://github.com/noppefoxwolf/RxSwifter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'RxSwifter/Classes/**/*'
  s.dependency 'Swifter'
  s.dependency 'RxSwift'
end
