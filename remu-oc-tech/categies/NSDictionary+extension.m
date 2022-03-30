//
//  NSDictionary+extension.m
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import "NSDictionary+extension.h"

@implementation NSDictionary (extension)
- (BOOL)isEmpty {
    return self == nil || [self isKindOfClass:[NSNull class]] || [[self allKeys] count] == 0;
}
-(NSString *)getStringValue:(NSString *)key defaultValue:(NSString *)defaultValue {
    if (self.isEmpty) {
        return  defaultValue;
    }
    NSObject *object = self[key];
    if (object == nil || [object isKindOfClass:[NSNull class]]) {
        return  defaultValue;
    }
    return  [NSString stringWithFormat:@"%@", self[key]];
}
@end
