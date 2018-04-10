//
//  NSObject+SHCheck.m
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import "NSObject+SHCheck.h"

@implementation NSObject (SHCheck)

+ (BOOL)isEmpty:(id)obj
{
    if (obj == nil || [obj isEqual:[NSNull null]]) {
        return YES;
    }
    return NO;
}

+ (BOOL)isNotEmpty:(id)obj
{
    return ![NSObject isEmpty:obj];
}

@end
