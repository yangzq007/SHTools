//
//  NSDictionary+SHJson.m
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import "NSDictionary+SHJson.h"

@implementation NSDictionary (SHJson)

+ (NSDictionary *)dictionaryWithJsonData:(NSData *)data error:(NSError **)error
{
    if (data == nil || [data isEqual:[NSNull null]]) {
        return nil;
    }
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:error];
}

+ (NSDictionary *)dictionaryWithJsonString:(NSString *)jsonStr error:(NSError **)error
{
    if (jsonStr == nil || [jsonStr isEqual:[NSNull null]]) {
        return nil;
    }
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    return [NSDictionary dictionaryWithJsonData:jsonData error:error];
}

@end
