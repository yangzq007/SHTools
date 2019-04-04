//
//  SHData.h
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import <Foundation/Foundation.h>

/**
 标准数据返回格式
 */
@interface SHData : NSObject

+ (NSDictionary *)success:(NSNumber *)success data:(NSDictionary *)data;

+ (NSDictionary *)success:(NSNumber *)success msg:(NSString *)msg data:(NSDictionary *)data;

+ (NSDictionary *)code:(NSString *)code success:(NSNumber *)success msg:(NSString *)msg data:(NSDictionary *)data;

@end
