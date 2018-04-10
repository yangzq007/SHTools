//
//  NSString+SHPhone.m
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import "NSString+SHPhone.h"

@implementation NSString (SHPhone)

- (NSString *)standardPhoneNum
{
    NSString *str = [self stringByReplacingOccurrencesOfString:@"+86" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"-" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    return str;
}

- (NSString *)cleanHeaderAndFooter
{
    NSString *str = [self stringByReplacingOccurrencesOfString:@"\U0000202d" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"\U0000202c" withString:@""];
    return str;
}


@end
