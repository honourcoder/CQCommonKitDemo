//
//  NSString+Regular.m
//  CQCommonKit
//
//  Created by Arthur's on 2020/4/11.
//

#import "NSString+Regular.h"

#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Regular)

/** 判断是否为手机号 */
+(BOOL)isPhoneNumber:(NSString * _Nonnull)string{
    BOOL isMatch = NO;
    NSString *pattern = @"^1(3[0-9]|4[579]|5[0-35-9]|6[6]|7[3678]|8[0-9]|9[89])\\d{8}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    isMatch = [pred evaluateWithObject:string];
    return isMatch;
}

/** 检测是否只包含字幕和数字 */
+(BOOL)isCharacterAndNumber:(NSString * _Nonnull)string{
    BOOL isMatch = NO;
    NSCharacterSet *characterSet = [[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"] invertedSet];
    NSString *filtered = [[string componentsSeparatedByCharactersInSet:characterSet] componentsJoinedByString:@""];
    isMatch = [string isEqualToString:filtered];
    return isMatch;
}

/**
 进行md5签名

 @param key 需要签名的字符串
 @return 签名后的字符串
 */
-(NSString *)md5{
    
    const char *str = [self UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (CC_LONG)strlen(str), digest);
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH *2];
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++) {
        [output appendFormat:@"%02x", digest[i]];
    }
    return output;
}

@end
