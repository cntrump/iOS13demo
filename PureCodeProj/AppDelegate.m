//
//  AppDelegate.m
//  PureCodeProj
//
//  Created by vvveiii on 2019/9/17.
//  Copyright © 2019 lvv. All rights reserved.
//

#import "AppDelegate.h"
#import "SceneDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    _window = [[UIWindow alloc] initWithFrame:UIScreen.mainScreen.bounds];
    _window.backgroundColor = UIColor.whiteColor;
    _window.rootViewController = [[ViewController alloc] init];
    [_window makeKeyAndVisible];

    return YES;
}


- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    
    return YES;
}

#pragma mark - UISceneSession lifecycle

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 130000
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    UISceneConfiguration *sceneConfig = [[UISceneConfiguration alloc] initWithName:nil sessionRole:connectingSceneSession.role];
    sceneConfig.delegateClass = SceneDelegate.class;

    return sceneConfig;
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions API_AVAILABLE(ios(13.0)) {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}
#endif

@end
