Pod::Spec.new do |s|
  s.name             = "NordicDFU"
  s.version          = "4.16.0"
  s.summary          = "This repository contains a library to perform Device Firmware Update on the nRF5x devices."
  s.description      = <<-DESC
The nRF5x Series chips are flash-based SoCs, and as such they represent the most flexible solution available. A key feature of the nRF5x Series and their associated software architecture and S-Series SoftDevices is the possibility for Over-The-Air Device Firmware Upgrade (OTA-DFU). See Figure 1. OTA-DFU allows firmware upgrades to be issued and downloaded to products in the field via the cloud and so enables OEMs to fix bugs and introduce new features to products that are already out on the market. This brings added security and flexibility to product development when using the nRF5x Series SoCs.
                       DESC

  s.homepage         = "https://github.com/NordicSemiconductor/IOS-DFU-Library"
  s.documentation_url = "https://nordicsemiconductor.github.io/IOS-DFU-Library/documentation/nordicdfu"
  s.license          = 'BSD 3-Clause'
  s.authors          = { "Aleksander Nowakowski" => "aleksander.nowakowski@nordicsemi.no" }
  s.source           = { :git => "https://github.com/NordicSemiconductor/IOS-DFU-Library.git", :tag => s.version.to_s }
  s.social_media_url = 'https://x.com/nordictweets'
  s.swift_versions   = ['4.2', '5.0', '5.1', '5.2', '5.3', '5.4', '5.5', '5.6', '5.7', '5.8', '5.9']
  
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'

  s.source_files = 'Library/Classes/**/*'
  s.resource_bundles = {
    'NordicDFUPrivacyInfo' => ['Library/Assets/PrivacyInfo.xcprivacy']
  }

  s.dependency 'ZIPFoundation', '= 0.9.19'

end
