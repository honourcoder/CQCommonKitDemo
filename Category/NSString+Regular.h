//
//  NSString+Regular.h
//  CQCommonKit
//
//  Created by Arthur's on 2020/4/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


/**
 * 提供字符串正则验证相关的
 */
@interface NSString (Regular)

/** 判断是否为手机号 */
+(BOOL)isPhoneNumber:(NSString * _Nonnull)string;

/** 检测是否只包含字幕和数字 */
+(BOOL)isCharacterAndNumber:(NSString * _Nonnull)string;

/**
 进行md5签名
 @return 签名后的字符串
 */
-(NSString *)md5;

@end

NS_ASSUME_NONNULL_END
