//
//  ZQMacros.h
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#ifndef ZQMacros_h
#define ZQMacros_h
#import "ZQApp.h"

// Dimensions
#define ZQ_IS_NOTCH_SCREEN [ZQApp isNotchScreen]
#define ZQ_STATUSBAR_HEIGHT [ZQApp statusBarHeight]
#define ZQ_NAVIGATION_BAR_HEIGHT (ZQ_STATUSBAR_HEIGHT + 44)
#define ZQ_SAFE_BOTTOM_SAPCE (ZQ_IS_NOTCH_SCREEN ? 34.f : 0.f)
#define ZQ_TABBAR_HEIGHT (ZQ_SAFE_BOTTOM_SAPCE + 49)
#define ZQ_SCREEN_WIDTH  [UIScreen mainScreen].bounds.size.width
#define ZQ_SCREEN_HEIGHT [UISCreen mainScreen].bounds.size.height
#define ZQ_SCALE_WIDTH(width) (ZQ_SCREEN_WIDTH / 375.0 * (width))
#define ZQ_SCALE_HEIGHT(height) (ZQ_SCREEN_HEIGHT / 667.0 * (height))

// App Info in info.plist
#define ZQ_APP_IDENTIFIER_KEY      ({ (NSString *)kCFBundleIdentifierKey; })
#define ZQ_APP_IDENTIFIER          [[[NSBundle mainBundle] objectForInfoDictionaryKey:ZQ_APP_IDENTIFIER_KEY] description]

#define ZQ_APP_BUNDLE_NAME_KEY     ({ (NSString *)kCFBundleNameKey; })
#define ZQ_APP_BUNDLE_NAME         [[[NSBundle mainBundle] objectForInfoDictionaryKey:ZQ_APP_BUNDLE_NAME_KEY] description]

#define ZQ_APP_DISPLAY_NAME        [[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"] description]
#define ZQ_APP_SHORT_VERSION       [[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"] description]
#define ZQ_APP_BUILD_VERSION       [[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"] description]


// App File Path
#define ZQ_DOCUMENT_PATH  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]
#define ZQ_TEMP_PATH  [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]
#define ZQ_CONTACT_PATH(path1, path2)  [path1 stringByAppendingPathComponent:path2]
#define ZQ_DOCUMENT_CONTACTT_PATH(path) ZQ_CONTACT_PATH(ZQ_DOCUMENT_PATH, path)
#define ZQ_TEMP_CONTACTT_PATH(path)  ZQ_CONTACT_PATH(ZQ_TEMP_PATH, path)


// Tools
// Color
#define ZQ_RGBA(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define  ZQ_RGB(r,g, b)  ZQ_RGBA(r,g,b,1)
#define ZQ_RGBA_HEX(rgba_hex) [UIColor colorWithRed:((float)((rgba_hex & 0xFF000000) >> 24))/255.0 \
green:((float)((rgba_hex & 0xFF0000) >> 16))/255.0 blue:((float)((rgba_hex & 0xFF00) >> 8))/255.0 alpha:1.0]
#define ZQ_RGB_HEX(rgb_hex) [UIColor colorWithRed:((float)((rgb_hex & 0xFF0000) >> 16))/255.0 \
green:((float)((rgb_hex & 0xFF00) >> 8))/255.0 blue:((float)(rgb_hex & 0xFF))/255.0 \
alpha:1.0]

// Log
#ifdef DEBUG
#define ZQ_LOG(format, ...) NSLog(@" %s-[%d] %s:" format, __FILE_NAME__, __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__)
#else
#define ZQ_LOG(format, ...)
#endif


#define ZQ_USERDEFAULT_SAVE(key, objc)  do { \
[[NSUserDefaults standardUserDefaults] setObject:objc forKey:key]; \
[[NSUserDefaults standardUserDefaults] synchronize]; \
} while(0);

#define ZQ_USERDEFAULT_GET(key) \
[[NSUserDefaults standardUserDefaults] objectForKey:key]

#define ZQ_WEAKFIY(x) \
autoreleasepool{} __weak __typeof__(x) weak##x = x;

#define ZQ_STRONGFIY(x) \
autoreleasepool{} __typeof__(x) x = weak##x

#endif /* ZQMacros_h */


