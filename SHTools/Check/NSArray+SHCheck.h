//
//  NSArray+SHCheck.h
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SHCheck)

/**
 检查是否为空
 
 nil,[Null null],@[]都被视为empty
 */
+ (BOOL)isEmpty:(NSArray *)arr;

/**
 检查判断不为空
 */
+ (BOOL)isNotEmpty:(NSArray *)arr;

@end
