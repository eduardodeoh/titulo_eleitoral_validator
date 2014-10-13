# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'titulo_eleitoral_validator'
  spec.version       = '0.0.1'
  spec.authors       = ['Eduardo de O. Hernandes']
  spec.email         = ['eduardodeoh@gmail.com']
  spec.summary       = %q{Validador customizado para validar título eleitoral no Rails 4 }
  spec.description   = %q{Validador customizado via ActiveModel}
  spec.homepage      = 'https://github.com/eduardodeoh/titulo_eleitoral_validator'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'titulo_eleitoral'
  spec.add_dependency 'activemodel', '>= 4'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end
