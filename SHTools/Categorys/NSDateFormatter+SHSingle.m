//
//  NSDateFormatter+SHSingle.m
//  SHTools
//
//  Created by yzq on 2020/6/22.
//

#import "NSDateFormatter+SHSingle.h"

@implementation NSDateFormatter (SHSingle)

+(instancetype)sh_shared
{
    static NSDateFormatter *_formatter = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _formatter = [[NSDateFormatter alloc] init];
        _formatter.dateFormat = SHDateFormatDefault;
    });
    return _formatter;
}

#pragma mark - Interface

+ (NSString *)sh_stringFromTimeInterval:(NSTimeInterval)timeInterval
{
    return [self sh_stringFromTimeInterval:timeInterval format:SHDateFormatDefault];
}

+ (NSString *)sh_stringFromTimeInterval:(NSTimeInterval)timeInterval format:(NSString *)format
{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *formatter = [NSDateFormatter sh_shared];
    formatter.dateFormat = format;
    return [formatter stringFromDate:date];
}

+ (NSString *)sh_stringFromDate:(NSDate *)date
{
    return [self sh_stringFromDate:date format:SHDateFormatDefault];
}

+ (NSString *)sh_stringFromDate:(NSDate *)date format:(NSString *)format
{
    NSDateFormatter *formatter = [NSDateFormatter sh_shared];
    formatter.dateFormat = format;
    return [formatter stringFromDate:date];
}

@end
