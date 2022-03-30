//
//  remu_oc_techTests.m
//  remu-oc-techTests
//
//  Created by Barry on 2022/3/30.
//

#import <XCTest/XCTest.h>
#import "Utility.h"
#import "NSString+extension.h"
@interface remu_oc_techTests : XCTestCase

@end

@implementation remu_oc_techTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testUtilityObjectIsEmpty {
    
    NSArray *array1 = @[];
    BOOL r1 = [Utility iterateObjectIsEmpty:array1];
    NSAssert(r1 == true, @"");
    NSArray *array2 = @[@"", @""];
    BOOL r2 = [Utility iterateObjectIsEmpty:array2];
    NSAssert(r2 == false, @"");
    NSArray *array3 = [NSNull null];
    BOOL r3 = [Utility iterateObjectIsEmpty:array3];
    NSAssert(r3 == true, @"");
    
    NSMutableArray *array4 = [[NSMutableArray alloc] init];
    BOOL r4 = [Utility iterateObjectIsEmpty:array4];
    NSAssert(r4 == true, @"");
    
    NSMutableArray *array5 = [[NSMutableArray alloc] initWithObjects:@"1",@"2", nil];
    BOOL r5 = [Utility iterateObjectIsEmpty:array5];
    NSAssert(r5 == false, @"");
}

- (void)testSHA256 {
    NSString *name = @"123456";
    NSString *sha25 = [name sha256HashHex];
    NSLog(@"%@", sha25);
    NSString *res = [@"8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92" uppercaseString];
    XCTAssertEqualObjects(sha25, res);
    
    NSString *chinese = @"北京时间3月30日，篮网主场对阵活塞，上半场结束，篮网58-64落后。杜兰特半场贡献19分8篮板5助攻1抢断1盖帽，投篮14中7，三分3中2。距离第二节结束还有3分49秒时，令人揪心的一幕发生了。杜兰特突破上篮，左脚踩到了约瑟夫的脚面，90度崴脚，他面色痛苦地走到场边，有点一瘸一拐";
    XCTAssertEqualObjects([chinese sha256HashHex], [@"39afd6d3502a4b199b27f4f0860182fc92a999da84a23cee754af5e76f84f384" uppercaseString]);
}

@end
