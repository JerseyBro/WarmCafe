//
//  JSCRootTabBarVM.h
//  WarmCafe
//
//  Created by jersey on 26/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "JSCBaseModel.h"

@interface JSCRootTabBarItemModel: JSCBaseModel

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *selectImage;
@property (nonatomic, copy) NSString *color;
@property (nonatomic, copy) NSString *selectedColor;
@property (nonatomic, copy) NSString *viewController;
@property (nonatomic, assign) BOOL hasNavigation;

@end


@interface JSCRootTabBarVM : JSCBaseModel

@property (nonatomic, strong) NSArray<JSCRootTabBarItemModel*> *items;
@property (nonatomic, copy) NSString *tabBarBg;

@end
