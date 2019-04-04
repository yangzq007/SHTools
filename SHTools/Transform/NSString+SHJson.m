//
//  NSString+SHJson.m
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import "NSString+SHJson.h"

@implementation NSString (SHJson)

+ (NSString *)jsonStringFromDic:(NSDictionary *)dic
{
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:0 error:NULL];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

+ (NSString *)jsonStringFromArr:(NSDictionary *)arr
{
    NSData *data = [NSJSONSerialization dataWithJSONObject:arr options:0 error:NULL];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

@end
