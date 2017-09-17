Pod::Spec.new do |s|
  s.name             = 'RxSwifter'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RxSwifter.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/🦊Tomoya Hirano/RxSwifter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '🦊Tomoya Hirano' => 'noppelabs@gmail.com' }
  s.source           = { :git => 'https://github.com/🦊Tomoya Hirano/RxSwifter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'RxSwifter/Classes/**/*'
  s.dependency 'Swifter'
  s.dependency 'RxSwift'
end
