platform :ios, '11.0'
use_frameworks!

workspace 'ModulesDemo.xcworkspace'

target 'ModulesDemoStaticLib' do
    project 'ModulesDemo/ModulesDemo'
    pod 'ThirdPartyLib', :path => 'ThirdPartyLib/Pod'
end

post_install do |installer|
    installer.aggregate_targets.each do |aggregate_target|
        if aggregate_target.product_module_name == 'Pods_ModulesDemoStaticLib'
            aggregate_target.xcconfigs.each do |config_name, config_file|
                config_file.attributes['OTHER_LIBTOOLFLAGS'] = '$(OTHER_LDFLAGS)'
                xcconfig_path = aggregate_target.xcconfig_path(config_name)
                config_file.save_as(xcconfig_path)
            end
        end
    end
end
