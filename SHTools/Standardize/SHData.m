//
//  SHData.m
//  SHTools
//
//  Created by yzq on 2019/4/4.
//

#import "SHData.h"

@implementation SHData

+ (NSDictionary *)success:(NSNumber *)success data:(NSDictionary *)data
{
    return [self code:nil success:success msg:nil data:data];
}

+ (NSDictionary *)success:(NSNumber *)success msg:(NSString *)msg data:(NSDictionary *)data
{
    return [self code:nil success:success msg:msg data:data];
}

+ (NSDictionary *)code:(NSString *)code success:(NSNumber *)success msg:(NSString *)msg data:(NSDictionary *)data
{
    NSString *desCode = code;
    NSNumber *desSuccess = success;
    NSString *desMsg = msg;
    
    if (!desCode) {
        desCode = @"";
    }
    if (!desSuccess) {
        desSuccess = [NSNumber numberWithBool:NO];
    }
    if (!desMsg) {
        desMsg = @"";
    }
    
    if (data) {
        return @{@"code":desCode,@"success":desSuccess,@"msg":desMsg,@"data":data};
    }else{
        return @{@"code":desCode,@"success":desSuccess,@"msg":desMsg};
    }
}

@end
