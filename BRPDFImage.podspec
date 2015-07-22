Pod::Spec.new do |s|

  s.name         = 'BRPDFImage'
  s.version      = '1.0.0'
  s.summary      = 'The Little UIImage Class That Could (draw vector art).'
  s.description  = <<-DESC
                   BRPDFImage is a very small extension of UIImage that allows you to use PDF 
                   artwork anywhere a UIImage is needed. The PDF format can be thought of as 
                   just another vector art file format, and in fact any vector art editing 
                   program worth a lick will support saving PDF files.
                   
                   Using PDF artwork can provide significant app size savings as a single
                   vector PDF file can be used on all device resolutions without any loss of
                   fidelity. The drawing can be tinted as well, for example to match an
                   established color theme.
                   DESC

  s.homepage     = 'https://github.com/Blue-Rocket/BRPDFImage'
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE.txt' }
  s.author       = { 'Matt Magoffin' => 'matt@bluerocket.us' }

  s.platform     = :ios, '5.1'

  s.source       = { :git => 'https://github.com/Blue-Rocket/BRPDFImage.git', 
  					 :tag => s.version.to_s }
  
  s.requires_arc = true
  
  s.frameworks    = 'CoreGraphics', 'UIKit'
  
  s.source_files = 'BRPDFImage/BRPDFImage/BRPDFImage.{h,m}'
end
