//
//  Utility.m
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import "Utility.h"

@implementation Utility
+ (BOOL)iterateObjectIsEmpty:(NSObject *)object {
    if (object == nil ||   [object isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([object isKindOfClass:[NSString class]]) {
        NSString *stringObject = (NSString *)object;
        return [stringObject length] == 0;
    } else if ([object isKindOfClass:[NSArray class]]) {
        NSArray *arrayObject = (NSArray *)object;
        return [arrayObject count] == 0;
    } else if ([object isKindOfClass:[NSDictionary class]]) {
        NSDictionary *dictObject = (NSDictionary *)object;
        return [[dictObject allKeys] count] == 0;
    } else if ([object isKindOfClass:[NSSet class]]) {
        NSSet *setObject = (NSSet *)object;
        return [[setObject allObjects] count] == 0;
    } else {
        return  NO;
    }
}
@end
