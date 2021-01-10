//
//  CQBaseModel.m
//
//  Created by CoderQi on 2018/11/13.
//  Copyright © 2018 CoderQi. All rights reserved.
//

#import "CQBaseModel.h"

@implementation CQBaseModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}

-(void)setValue:(id)value forKey:(NSString *)key{
    if(!value){
        return;
    }else{
        [super setValue:value forKey:key];
    }
}

-(void)setValueToLoaclFileValue:(NSString *)value andKey:(NSString *)key{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setValue:value forKey:key];
    [userDefaults synchronize];
}

-(NSString *)getValueFromLocalFile:(NSString *)key{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *value = [userDefaults valueForKey:key];
    if (!value) {
        value = @"";
    }
    return value;
}

@end
