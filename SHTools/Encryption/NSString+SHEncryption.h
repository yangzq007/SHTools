//
//  NSString+SHEncryption.h
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import <Foundation/Foundation.h>

@interface NSString (SHEncryption)

#pragma mark - 工厂方法

/**
 生成一个长度为length的随机字符串    注：字符取值范围a-zA-Z0-9
 
 @param length 字符串长度
 @return 随机字符串
 */
+ (NSString *)randomString:(NSInteger)length;

/**
 生成一个长度为length的随机字符串
 
 @param length 字符串长度
 @param letters 字符取值范围
 @return 随机字符串
 */
+ (NSString *)randomString:(NSInteger)length inLetters:(NSString *)letters;

#pragma mark - 加密

/**
 sha1加密
 
 @return 密文
 */
- (NSString *)sha1;

/**
 hmac带盐的sha1加密
 
 @param key 盐
 @return 密文
 */
- (NSString *)hmacSha1:(NSString *)key;

@end
