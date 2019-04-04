//
//  SHDevice.h
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import <Foundation/Foundation.h>

@interface SHDevice : NSObject

/**
 获得设备cpu类型
 
 @return cpu类型描述
 */
+ (NSString *)getCPUType;

///**
// 获取设备mac地址  注：获取mac地址会导致上架被拒，谨慎使用
// */
//+ (NSString *)getMacAddress;


/**
 获取设备ip 注：ip为内网ip，ipv4
 */
+ (NSString *)getIPAddress;

/**
 获取设备ip 注：ip为内网ip
 
 @param preferIPv4 是否是ipv4，YES是ipv4，NO是ipv6
 */
+ (NSString *)getIPAddress:(BOOL)preferIPv4;

/**
 获取设备外网ip
 */
+ (NSString *)getNetIP;

@end
