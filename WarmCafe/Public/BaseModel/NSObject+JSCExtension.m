//
//  NSObject+JSCExtension.m
//  WarmCafe
//
//  Created by jersey on 27/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "NSObject+JSCExtension.h"

@implementation NSObject (JSCExtension)

- (instancetype)jsc_setKeyValues:(id)keyValues
{
    return [self mj_setKeyValues:keyValues];
}

+ (instancetype)jsc_setObjectWithKeyValues:(id)keyValues
{
    return [self mj_objectWithKeyValues:keyValues];
}

+ (NSMutableArray *)jsc_objectArrayWithKeyValuesArray:(id)keyValuesArray
{
    return [self mj_objectArrayWithKeyValuesArray:keyValuesArray];
}

#pragma mark --- Protocol

+ (NSDictionary *)jsc_objectClassInArray
{
    if ([self respondsToSelector:@selector(jsc_objectClassInArray)]) {
        return [self mj_objectClassInArray];
    }
    return nil;
}

+ (NSDictionary *)jsc_replacedKeyFromPropertyName
{
    if ([self respondsToSelector:@selector(jsc_replacedKeyFromPropertyName)]) {
        return [self jsc_replacedKeyFromPropertyName];
    }
    return nil;
}

@end
