//
//  NSArray+SHCheck.m
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import "NSArray+SHCheck.h"

@implementation NSArray (SHCheck)

+ (BOOL)isEmpty:(NSArray *)arr
{
    if (arr == nil || [arr isEqual:[NSNull null]] || [arr count] < 1) {
        return YES;
    }
    return NO;
}

+ (BOOL)isNotEmpty:(NSArray *)arr
{
    return ![NSArray isEmpty:arr];
}

@end
