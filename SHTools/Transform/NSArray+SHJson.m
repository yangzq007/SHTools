//
//  NSArray+SHJson.m
//  SHTools
//
//  Created by yzq on 2018/12/5.
//

#import "NSArray+SHJson.h"

@implementation NSArray (SHJson)

+ (NSArray *)arrayWithJsonData:(NSData *)data error:(NSError **)error
{
    if (data == nil || [data isEqual:[NSNull null]]) {
        return nil;
    }
    return [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:error];
}

+ (NSArray *)arrayWithJsonString:(NSString *)jsonStr error:(NSError **)error
{
    if (jsonStr == nil || [jsonStr isEqual:[NSNull null]]) {
        return nil;
    }
    NSData *jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    return [NSArray arrayWithJsonData:jsonData error:error];
}

@end
