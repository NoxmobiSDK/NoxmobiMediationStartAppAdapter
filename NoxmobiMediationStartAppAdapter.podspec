
Pod::Spec.new do |spec|

  spec.name         = "NoxmobiMediationStartAppAdapter"
  spec.version      = "4.7.0.0" # Mark
  spec.summary      = "Noxmobi ad mediation adapter for StartApp."
  spec.homepage     = "https://github.com/NoxmobiSDK/NoxmobiMediationStartAppAdapter"
  spec.license      = "MIT"
  spec.author       = { "Chong" => "zhanglovesan@gmail.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.source       = { :git => "https://github.com/NoxmobiSDK/NoxmobiMediationStartAppAdapter.git", :tag => "#{spec.version}" }
  spec.source_files = "NoxmobiMediationStartAppAdapter.framework/Headers/*.{h}"
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lObjC' }
  spec.ios.vendored_frameworks = 'NoxmobiMediationStartAppAdapter.framework'
  spec.requires_arc = true

  spec.dependency "StartAppSDK", "4.7.0"

end
