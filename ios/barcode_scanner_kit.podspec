#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_ml_kit.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'barcode_scanner_kit'
  s.version          = '1.0.0'
  s.summary          = 'Flutter Plugin for barcode scanner'
  s.description      = <<-DESC
flutter plugin for barcode scanner
                       DESC
  s.homepage         = 'https://github.com/MarioJunio/flutter-barcode-scanner-plugin'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'dev.mario.93@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  # mlkit vision
  s.dependency 'GoogleMLKit/BarcodeScanning', '~> 2.2.0'
  s.platform                = :ios, '10.0'
  s.ios.deployment_target   = '10.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
