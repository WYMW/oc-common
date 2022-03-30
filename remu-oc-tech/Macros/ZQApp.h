//
//  ZQApp.h
//  ZQPods
//
//  Created by Barry on 2022/1/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface ZQApp : NSObject
+ (UIWindow *)keywindow;
+ (CGFloat)statusBarHeight;
+ (BOOL)isNotchScreen;
+ (NSString *)getDeviceModel;
+ (NSString *)getIDFA;
@end

NS_ASSUME_NONNULL_END
