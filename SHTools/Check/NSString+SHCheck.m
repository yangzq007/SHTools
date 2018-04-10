//
//  NSString+SHCheck.m
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import "NSString+SHCheck.h"

@implementation NSString (SHCheck)

+ (BOOL)isEmpty:(NSString *)str
{
    if (str == nil || [str isEqual:[NSNull null]] || [str isEqualToString:@""]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isNotEmpty:(NSString *)str
{
    return ![NSString isEmpty:str];
}

+ (NSString *)noNilStr:(NSString *)str
{
    if ([NSString isEmpty:str]) {
        return @"";
    }
    return str;
}


- (BOOL)isPhone
{
    NSString *regex =  @"^(0|\\+86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [predicate evaluateWithObject:self];
}

- (BOOL)isWeChatNum
{
    NSString *regex1 =  @"^[-_a-zA-Z0-9]{6,20}+$";
    NSString *regex2 =  @"^.*[-_a-zA-Z]{1,}+.*$";
    
    NSPredicate *predicate1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex1];
    NSPredicate *predicate2 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex2];
    
    return ([predicate1 evaluateWithObject:self] && [predicate2 evaluateWithObject:self]);
}

- (NSString *)replaceBy:(NSString *)des when:(NSString *)current
{
    if ([self isEqualToString:current]) {
        return des;
    }
    return self;
}

@end
