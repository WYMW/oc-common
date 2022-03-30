//
//  NSString+extension.h
//  remu-tech-oc
//
//  Created by Barry on 2022/3/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (extension)
- (BOOL)isEmpty;
- (NSString *)sha256HashHex;
@end

NS_ASSUME_NONNULL_END
