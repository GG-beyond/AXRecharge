
Pod::Spec.new do |s|


  s.name         = "AXRecharge"
  s.version      = "0.0.1"
  s.summary      = " 组件化 之 充值类 ."

  s.description  = <<-DESC
		玩转组件化 之 充值模块，简单实现
                   DESC

  s.homepage     = "https://github.com/GG-beyond/AXRecharge"


  s.license      = "MIT"
  s.author             = { "GG-beyond" => "872608550@qq.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"



  s.source       = { :git => "https://github.com/GG-beyond/AXRecharge.git", :tag => "0.0.1" }



    s.subspec 'ViewControllers' do |shared|

        shared.source_files =  'AXRecharge/AXRecharge/ViewControllers/*.{h,m}'
    end

    s.subspec 'CTMediatorCategory' do |ct|

        ct.source_files =  'AXRecharge/AXRecharge/CTMediatorCategory/*.{h,m}'
        ct.dependency 'AXRecharge/ViewControllers'

    end
  s.exclude_files = "Classes/Exclude"
  s.dependency 'CTMediator','~> 12'


end
