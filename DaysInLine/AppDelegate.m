//
//  AppDelegate.m
//  DaysInLine
//
//  Created by 张力 on 13-10-19.
//  Copyright (c) 2013年 张力. All rights reserved.
//

#import "AppDelegate.h"
#import "globalVars.h"
#import "MobClick.h"
//#import <Frontia/Frontia.h>



#define APP_KEY @"uF4iGxR6qLmkAeZVDi2S8e8m"
#define REPORT_ID @"dd3c60ebbf"

#define IosAppVersion [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

#define WX_APP_ID @"wx4e1ffebe5397b9ef"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    //use weixin share..
    [MobClick startWithAppkey:@"5466fe56fd98c505fb003d3c" reportPolicy:BATCH   channelId:@""];
    
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    [MobClick setAppVersion:version];
    
    [WXApi registerApp:WX_APP_ID
       withDescription:@"DaysinLinePro-share-v2.1"];

    [self setShareIDs];
    
    if ([application respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeSound|UIUserNotificationTypeBadge categories:nil]];
    }else
    {
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes: (UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeSound | UIRemoteNotificationTypeAlert)];
    }

   return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    application.applicationIconBadgeNumber -= 1;
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



- (void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification*)notification{
    
  
    application.applicationIconBadgeNumber -= 1;
}
- (BOOL)application:(UIApplication *)application
      handleOpenURL:(NSURL *)url
{
    return [ShareSDK handleOpenURL:url
                        wxDelegate:self];
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return [ShareSDK handleOpenURL:url
                 sourceApplication:sourceApplication
                        annotation:annotation
                        wxDelegate:self];
}

-(void)setShareIDs
{
    [ShareSDK registerApp:@"7bc4620a81e9"];//字符串api20为您的ShareSDK的AppKey
    
    //添加新浪微博应用 注册网址 http://open.weibo.com
    [ShareSDK connectSinaWeiboWithAppKey:@"1763059709"
                               appSecret:@"3f40f279a1587d9b2b61e35e73e63e2e"
                             redirectUri:@"http://www.sharesdk.cn"];
    //当使用新浪微博客户端分享的时候需要按照下面的方法来初始化新浪的平台
    [ShareSDK  connectSinaWeiboWithAppKey:@"1763059709"
                                appSecret:@"3f40f279a1587d9b2b61e35e73e63e2e"
                              redirectUri:@"http://www.sharesdk.cn"
                              weiboSDKCls:[WeiboSDK class]];

    //添加微信应用 注册网址 http://open.weixin.qq.com
    [ShareSDK connectWeChatWithAppId:@"wxa1b29f1c8742f8d4"
                           wechatCls:[WXApi class]];
    
    
    [ShareSDK connectWeChatWithAppId:@"wxa1b29f1c8742f8d4"   //微信APPID
                           appSecret:@"0e1653bb2d4dda1abf5da96891d1db07"  //微信APPSecret
                           wechatCls:[WXApi class]];
    
    //添加Facebook应用  注册网址 https://developers.facebook.com
    [ShareSDK connectFacebookWithAppKey:@"507390166079860"
                              appSecret:@"1a1d4a8fcad6686cf2cc63b004f3cdec"];
    
    
}

@end