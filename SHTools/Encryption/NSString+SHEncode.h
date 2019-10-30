//
//  NSString+SHEncode.h
//  SHTools
//
//  Created by yzq on 2019/10/30.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (SHEncode)

#pragma mark - Base64

- (NSString *)base64Encode;
- (NSString *)base64Decode;

#pragma mark - URLEncode

- (NSString *)urlQueryEncode;
- (NSString *)urlQueryDecode;

@end

NS_ASSUME_NONNULL_END
