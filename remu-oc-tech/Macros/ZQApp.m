//
//  ZQApp.m
//  ZQPods
//
//  Created by Barry on 2022/1/5.
//

#import "ZQApp.h"
#import <sys/utsname.h>
#import <AdSupport/AdSupport.h>

@implementation ZQApp

+ (UIWindow *)keywindow {
    
    for (UIWindowScene *scene in UIApplication.sharedApplication.connectedScenes) {
        for (UIWindow *window in scene.windows) {
            if (window.isKeyWindow) {
                return window;
            }
        }
    }
    return nil;
}

+ (CGFloat)statusBarHeight {
        UIWindowScene *scene = (UIWindowScene *)UIApplication.sharedApplication.connectedScenes.allObjects[0];
        return scene.statusBarManager.statusBarFrame.size.height;
}

+(BOOL)isNotchScreen {
    return [self statusBarHeight] > 20;
}

+ (NSString *)getDeviceModel {
    //手机型号
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *platform = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    return [self getStringValue:platform];
}

+ (NSString *)getIDFA {
    NSUUID *idfa = [[ASIdentifierManager sharedManager] advertisingIdentifier];
    return [self getStringValue:idfa.UUIDString];
}

+ (NSString *)getStringValue:(NSString *)string defaultValue:(NSString *)defaultValue {
    if (string == nil || [string isKindOfClass:[NSNull class]] || [string length] == 0 ) {
        return  defaultValue;
    }
    return  string;
}

+ (NSString *)getStringValue:(NSString *)string {
    return [self  getStringValue:string defaultValue:@""];
}

@end
