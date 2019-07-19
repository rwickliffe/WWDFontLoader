Pod::Spec.new do |s|
  s.name         = 'WWDFontLoader'
  s.version      = '0.1.0'
  s.summary      = 'Convenience methods for loading and registering fonts.'

  s.homepage     = 'https://github.com/rwickliffe/WWDFontLoader'
  s.license      = 'MIT'
  s.author       = { 'Russell Wickliffe' => 'rwickliffe@gmail.com' }

  s.source       = { :git => 'https://github.com/rwickliffe/WWDFontLoader.git',
                     :tag => s.version }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'WWDFontLoader'
  s.frameworks   = 'CoreText'
end
