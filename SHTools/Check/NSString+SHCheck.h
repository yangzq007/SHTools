//
//  NSString+SHCheck.h
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHCheck)

/**
 检查是否为空
 
 nil,[Null null],@""都被视为empty
 */
+ (BOOL)isEmpty:(NSString *)str;

/**
 检查判断不为空
 */
+ (BOOL)isNotEmpty:(NSString *)str;

/**
 返回非nil字符串
 
 当str为nil,[Null null],@""时返回@""
 否则返回str本身
 */
+ (NSString *)noNilStr:(NSString *)str;

/**
 判断是否为手机号码
 */
- (BOOL)isPhone;

/**
 判断是否为微信号
 */
- (BOOL)isWeChatNum;

/**
 当字符串为current时替换为des，其余情况返回当前字符串
 
 @param des 替换为的目的字符窜
 @param current 被替换的字符串
 @return 结果字符串
 */
- (NSString *)replaceBy:(NSString *)des when:(NSString *)current;

@end
