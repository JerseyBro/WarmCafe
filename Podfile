# Uncomment the next line to define a global platform for your project
  platform :ios, '9.0'

target 'WarmCafe' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for WarmCafe

  pod 'BlocksKit', '2.2.5'
  pod 'Aspects', '1.4.1'
  pod 'MJRefresh', '3.1.12'
  pod 'MJExtension', '3.0.10'
  pod 'AFNetworking', '3.1.0'
  pod 'SDWebImage', '3.7.6'
  pod 'JLRoutes', '1.6'
  pod 'DDPageControl', '0.1'
  pod 'EGOCache', '2.1.3'
  pod 'WebViewJavascriptBridge', '4.1.5'
  pod 'MBProgressHUD', '0.9.2'
  pod 'WZLBadge', '1.2.5'
  pod 'FSCalendar', '2.6.0'
  pod 'UICountingLabel', '1.4.0'
  pod 'SDCycleScrollView', '1.65'
  pod 'YYText'
  pod 'UICollectionViewLeftAlignedLayout' , '1.0.2'
  pod 'AFNetworking+RetryPolicy', '1.0.4'
  pod 'MWPhotoBrowser', '2.1.2'
  pod 'mailcore2-ios', '0.6.4'

  pod 'UMengAnalytics-NO-IDFA', '4.1.5'# 友盟统计
  pod 'JPush', '2.1.9'# 极光推送
  pod 'AliyunOSSiOS', '2.6.0'# 阿里云OSS服务
  pod 'Bugly', '2.4.8'# Bugly异常上报

  # 主模块(必须)
  pod 'ShareSDK3', '3.5.2' # 最新版QQSDK不支持5s以下模拟器(i386)，真机不影响
  # Mob 公共库(必须) 如果同时集成SMSSDK iOS2.0:可看此注意事项：http://bbs.mob.com/thread-20051-1-1.html
  pod 'MOBFoundation', '2.2.3'
  # UI模块(非必须，需要用到ShareSDK提供的分享菜单栏和分享编辑页面需要以下1行)
  # pod 'ShareSDK3/ShareSDKUI'
  # 平台SDK模块(对照一下平台，需要的加上。如果只需要QQ、微信、新浪微博，只需要以下3行)
  pod 'ShareSDK3/ShareSDKPlatforms/QQ'
  # pod 'ShareSDK3/ShareSDKPlatforms/SinaWeibo'
  pod 'ShareSDK3/ShareSDKPlatforms/WeChat'
  pod 'ShareSDK3/ShareSDKPlatforms/SMS'
  inhibit_all_warnings!  #禁止掉警告

  target 'WarmCafeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'WarmCafeUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
