//
//  SceneDelegate.h
//  PureCodeProj
//
//  Created by vvveiii on 2019/9/17.
//  Copyright © 2019 lvv. All rights reserved.
//

#import <UIKit/UIKit.h>

#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 130000
API_AVAILABLE(ios(13.0))
@interface SceneDelegate : UIResponder <UIWindowSceneDelegate>

@property (strong, nonatomic) UIWindow * window;

@end
#endif
