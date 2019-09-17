# iOS13demo
iOS13 demo project without storyboard and xib

AppDelegate.m

```objc
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options API_AVAILABLE(ios(13.0)) {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    UISceneConfiguration *sceneConfig = [[UISceneConfiguration alloc] initWithName:nil sessionRole:connectingSceneSession.role];
    sceneConfig.delegateClass = SceneDelegate.class;

    return sceneConfig;
}
```

SceneDelegate.m

```objc
- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    _window = UIApplication.sharedApplication.delegate.window;
    _window.windowScene = (UIWindowScene *)scene;
}
```

```objc
- (void)scene:(UIScene *)scene openURLContexts:(NSSet<UIOpenURLContext *> *)URLContexts {
    UIOpenURLContext *context = URLContexts.anyObject;
    NSURL *URL = context.URL;

    NSMutableDictionary *options = NSMutableDictionary.dictionary;
    options[UIApplicationOpenURLOptionsSourceApplicationKey] = context.options.sourceApplication;
    options[UIApplicationOpenURLOptionsAnnotationKey] = context.options.annotation;
    options[UIApplicationOpenURLOptionsOpenInPlaceKey] = @(context.options.openInPlace);

    AppDelegate *appDelegate = (AppDelegate *)UIApplication.sharedApplication.delegate;
    [appDelegate application:UIApplication.sharedApplication openURL:URL options:options];
}
```
