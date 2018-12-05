//
//  NSArray+SHJson.h
//  SHTools
//
//  Created by yzq on 2018/12/5.
//

#import <Foundation/Foundation.h>

@interface NSArray (SHJson)

+ (NSArray *)arrayWithJsonData:(NSData *)data error:(NSError **)error;
+ (NSArray *)arrayWithJsonString:(NSString *)jsonStr error:(NSError **)error;

@end
