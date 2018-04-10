//
//  NSDictionary+SHJson.h
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (SHJson)

/**
 将JsonData转换为字典
 */
+ (NSDictionary *)dictionaryWithJsonData:(NSData *)data error:(NSError **)error;

/**
 将Json字符串转换为字典
 */
+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonStr error:(NSError **)error;

@end
