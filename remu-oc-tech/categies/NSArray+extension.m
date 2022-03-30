//
//  NSArray+extension.m
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import "NSArray+extension.h"

@implementation NSArray (extension)
- (BOOL)isEmpty {
    return self == nil || [self isKindOfClass:[NSNull class]] || [self count] == 0;
}
@end
