Pod::Spec.new do |s|
  s.name      = 'MobileVLCKit'
  s.version   = '3.0.0'
  s.summary   = "MobileVLCKit (Used by Kamcord)"
  s.homepage  = 'https://code.videolan.org/videolan/VLCKit'
  s.license   = {
    :type => 'LGPL v2.1', :file => 'MobileVLCKit-binary/COPYING.txt'
  }
  s.documentation_url = 'https://wiki.videolan.org/VLCKit/'
  s.platform  = :ios
  s.authors   = { 'Kamcord' => 'support@kamcord.com' }
  s.source    = {
    :http => "https://github.com/kamcord/VLCKit/releases/download/v3.0.0-pre3-test/MobileVLCKit-3.0.0-pre3-metadata.zip"
  }
  s.ios.vendored_framework = 'MobileVLCKit-binary/MobileVLCKit.framework'
  s.public_header_files = 'MobileVLCKit-binary/MobileVLCKit.framework/Headers/*.h'
  s.ios.deployment_target = '7.0'
  s.frameworks = 'QuartzCore', 'CoreText', 'AVFoundation', 'Security', 'CFNetwork', 'AudioToolbox', 'OpenGLES', 'CoreGraphics', 'VideoToolbox', 'CoreMedia'
  s.libraries = 'stdc++', 'stdc++.6', 'xml2', 'z', 'bz2', 'iconv'
  s.requires_arc = false
  s.xcconfig = {
    'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
    'CLANG_CXX_LIBRARY' => 'libc++'
  }
end
