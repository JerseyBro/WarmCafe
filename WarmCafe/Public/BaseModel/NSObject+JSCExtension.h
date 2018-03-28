//
//  NSObject+JSCExtension.h
//  WarmCafe
//
//  Created by jersey on 27/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "JSCBaseModel.h"

@protocol JSCKeyValue <NSObject>

@optional

+ (NSDictionary *)jsc_replacedKeyFromPropertyName;
+ (NSDictionary *)jsc_objectClassInArray;

@end

@interface NSObject (JSCExtension) <JSCKeyValue>

- (instancetype)jsc_setKeyValues:(id)keyValues;

+ (instancetype)jsc_setObjectWithKeyValues:(id)keyValues;

+ (NSMutableArray *)jsc_objectArrayWithKeyValuesArray:(id)keyValuesArray;

@end
