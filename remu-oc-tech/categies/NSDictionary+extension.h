//
//  NSDictionary+extension.h
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (extension)
-(NSString *)getStringValue:(NSString *)key defaultValue:(NSString *)defaultValue;
@end

NS_ASSUME_NONNULL_END
