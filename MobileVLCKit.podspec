Pod::Spec.new do |s|
  s.name      = 'MobileVLCKit'
  s.version   = '2.2.2'
  s.summary   = "MobileVLCKit (Used by Kamcord)"
  s.homepage  = 'https://code.videolan.org/videolan/VLCKit'
  s.license   = {
    :type => 'LGPL v2.1', :file => 'MobileVLCKit-binary/COPYING.txt'
  }
  s.documentation_url = 'https://wiki.videolan.org/VLCKit/'
  s.platform  = :ios
  s.authors   = { 'Kamcord' => 'support@kamcord.com' }
  s.source    = {
    :http => "https://github.com/kamcord/VLCKit/releases/download/2.2.2-metadata/MobileVLCKit-2.2.2.zip"
  }
  s.ios.vendored_frameworks = 'MobileVLCKit-binary/MobileVLCKit.framework'
  s.ios.deployment_target = '8.0'
  s.frameworks = 'QuartzCore', 'CoreText', 'AVFoundation', 'Security', 'CFNetwork', 'AudioToolbox', 'OpenGLES', 'CoreGraphics'
  s.libraries = 'stdc++', 'stdc++.6', 'xml2', 'z', 'bz2', 'iconv'
  s.requires_arc = false
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libstdc++'
  }
end
