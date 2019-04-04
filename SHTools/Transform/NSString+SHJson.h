//
//  NSString+SHJson.h
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import <Foundation/Foundation.h>

@interface NSString (SHJson)

+ (NSString *)jsonStringFromDic:(NSDictionary *)dic;
+ (NSString *)jsonStringFromArr:(NSDictionary *)arr;

@end
