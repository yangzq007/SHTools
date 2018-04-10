//
//  NSString+SHPhone.h
//  SHTools_Example
//
//  Created by yzq on 2018/4/10.
//  Copyright © 2018年 yangzq007. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (SHPhone)

/**
 返回标准的电话号码
 
 @return 移除"+86","-"," "等
 */
- (NSString *)standardPhoneNum;

/**
 清除iPhone X从通讯录拷贝出来的电话号码的不可见前后缀
 */
- (NSString *)cleanHeaderAndFooter;

@end
