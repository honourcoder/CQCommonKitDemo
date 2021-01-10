//
//  CQBaseModel.h
//
//  Created by CoderQi on 2018/11/13.
//  Copyright © 2018 CoderQi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CQBaseModel : NSObject

-(void)setValueToLoaclFileValue:(NSString *)value andKey:(NSString *)key;

-(NSString *)getValueFromLocalFile:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
