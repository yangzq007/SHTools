//
//  NSDateFormatter+SHSingle.h
//  SHTools
//
//  Created by yzq on 2020/6/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

static NSString *SHDateFormatDefault    = @"yyyy-MM-dd HH:mm:ss";
static NSString *SHDateFormatYMDHM      = @"yyyy-MM-dd HH:mm";

@interface NSDateFormatter (SHSingle)

/// 将时间戳转换为对应时间格式的字符串
/// @param timeInterval 时间戳
+ (NSString *)sh_stringFromTimeInterval:(NSTimeInterval)timeInterval;
+ (NSString *)sh_stringFromTimeInterval:(NSTimeInterval)timeInterval format:(NSString *)format;

/// 将NSDate转化为对应时间格式的字符串
+ (NSString *)sh_stringFromDate:(NSDate *)date;
+ (NSString *)sh_stringFromDate:(NSDate *)date format:(NSString *)format;

@end

NS_ASSUME_NONNULL_END
