Pod::Spec.new do |s|
  s.name             = "LivioHTTPServer"
  s.version          = "4.0"
  s.summary          = "A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications."

  s.homepage         = "https://github.com/SebastianZus/LivioHTTPServer"
  s.source           = { :git => "https://github.com/SebastianZus/LivioHTTPServer", :tag => s.version.to_s }

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source_files = ['LivioHTTPServer/LivioHTTPServer/**/*']

  s.libraries = 'xml2'
  s.ios.frameworks = 'CFNetwork', 'Security'
  s.osx.frameworks = 'CoreServices', 'Security'
  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  s.dependency 'CocoaAsyncSocket'
  s.dependency 'CocoaLumberjack'
end
