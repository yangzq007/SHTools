//
//  NSObject+SHCheck.h
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SHCheck)

/**
 检查是否为空
 
 nil,[Null null]被视为empty
 */
+ (BOOL)isEmpty:(id)obj;

/**
 检查判断不为空
 */
+ (BOOL)isNotEmpty:(id)obj;

@end
