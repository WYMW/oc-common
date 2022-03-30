//
//  NSString+extension.m
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import "NSString+extension.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (extension)
- (BOOL)isEmpty {
    return self == nil || [self isKindOfClass:[NSNull class]] || [self length] == 0;
}

- (NSString *)sha256HashHex {
    const char *str =[self UTF8String];
    unsigned char result[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(str, (CC_LONG)strlen(str), result);
    NSMutableString *ret = [NSMutableString stringWithCapacity: CC_SHA256_DIGEST_LENGTH];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++){
        [ret appendFormat:@"%02X", result[i]];
    }
    return [[ret uppercaseString] copy];
}
@end
