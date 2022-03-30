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
@end
