//
//  NSString+SHEncode.m
//  SHTools
//
//  Created by yzq on 2019/10/30.
//

#import "NSString+SHEncode.h"

@implementation NSString (SHEncode)

#pragma mark - Base64

- (NSString *)base64Encode
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)base64Decode
{
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:0];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

#pragma mark - URLEncode

- (NSString *)urlQueryEncode
{
    return [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
}

- (NSString *)urlQueryDecode
{
    return [self stringByRemovingPercentEncoding];
}

@end
