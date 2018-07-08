Pod::Spec.new do |s|

  s.name         = "ThirdPartyLib"
  s.version      = "1.0.0"
  s.summary      = "A static lib which contains a string"
  s.description  = <<-DESC
                   ThirdPartyLib gives access to a string
                   DESC

  s.homepage     = "https://github.com/chkpnt"
  s.license      = { :type => 'Copyright', :text => <<-LICENSE
    Copyright 2018 Gregor Dschung. All rights reserved.
    LICENSE
  }
  s.authors      = "Gregor Dschung"
  s.platform     = :ios, "8.0"

  s.static_framework = true
  s.source       = { :path => '.' }
  s.source_files  = "includes/public/*.h"
  s.vendored_libraries = [
      'libraries/libThirdParty.a'
  ]
end

