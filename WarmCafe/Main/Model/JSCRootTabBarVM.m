//
//  JSCRootTabBarVM.m
//  WarmCafe
//
//  Created by jersey on 26/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "JSCRootTabBarVM.h"

@implementation JSCRootTabBarItemModel


@end


@implementation JSCRootTabBarVM

- (NSArray*)defultItems
{
    NSString *color = @"#515151";
    NSString *selectedColor = @"#1DFF81";
    NSArray* items = @[@{@"title": @"首页",
                         @"viewController": @"YMHomeVC",
                         @"hasNavigation": @"0",
                         @"image": @"LibraTransactionHistoryPDF",
                         @"selectedImage": @"LibraTransactionHistoryGreenStar",
                         @"color": color,
                         @"selectedColor": selectedColor,
                        },
                       @{@"title": @"星礼卡",
                         @"viewController": @"YMHomeVC",
                         @"hasNavigation": @"1",
                         @"image": @"HistoryIcon_PurchaseCard",
                         @"selectedImage": @"SignUpSuccessDigital",
                         @"color": color,
                         @"selectedColor": selectedColor,
                         },
                       @{@"title": @"门店",
                         @"viewController": @"YMHomeVC",
                         @"hasNavigation": @"1",
                         @"image": @"RecentOrderShadeCupWithMuffin",
                         @"selectedImage": @"SignUpSuccessPhysical",
                         @"color": color,
                         @"selectedColor": selectedColor,
                         },
                       @{@"title": @"账户",
                         @"viewController": @"YMHomeVC",
                         @"hasNavigation": @"0",
                         @"image": @"HistoryIcon_TipBarista",
                         @"selectedImage": @"InboxSiren",
                         @"color": color,
                         @"selectedColor": selectedColor,
                         },
                       ];
    
    return items;
}

- (NSArray<JSCRootTabBarItemModel *> *)items
{
    if (!_items) {
        _items = [JSCRootTabBarItemModel jsc_objectArrayWithKeyValuesArray:[self defultItems]];
    }
    return _items;
}

@end
