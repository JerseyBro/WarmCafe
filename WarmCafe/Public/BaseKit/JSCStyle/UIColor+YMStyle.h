//
//  UIColor+YMStyle.h
//  YEAMoney
//
//  Created by suke on 16/5/20.
//  Copyright © 2016年 YEAMoney. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YMStyle)

+ (UIColor *)ym_colorForProductTypeGB;
+ (UIColor *)ym_colorForProductTypeYX;
+ (UIColor *)ym_colorForProductTypeCA;

+ (UIColor *)ym_backgroundGrayColor;//背景灰色

+ (UIColor *)ym_robinsEggBlueColor;
+ (UIColor *)ym_frenchBlueColor;
+ (UIColor *)ym_whiteColor;
+ (UIColor *)ym_blackColor;
+ (UIColor *)ym_blackTwoColor;
+ (UIColor *)ym_coralColor;
+ (UIColor *)ym_pinkishGreyColor;
+ (UIColor *)ym_pinkishGreyTwoColor;
+ (UIColor *)ym_warmGreyColor;
+ (UIColor *)ym_greyishBrownColor;
+ (UIColor *)ym_greyishBrownTwoColor;
+ (UIColor *)ym_seperateLineGrayColor;//分割线
+ (UIColor *)ym_wealthBackgroundColor;//分割线
+ (UIColor *)ym_wealthRiskSelectedCellColor;  //
+ (UIColor *)ym_colorWithHexString:(NSString *)color; //颜色字符串转换为颜色
+ (UIColor *)ym_dodgerBlue;
+ (UIColor *)ym_maizeColor;
+ (UIColor *)ym_brightBlue;

#pragma mark - v4.0

/**
 主色蓝

 @return 主色蓝
 */
+ (UIColor *)ym_mainBlueColor;


/**
 主色红

 @return 主色红
 */
+ (UIColor *)ym_mainRedColor;

/**
 分割线灰

 @return 分割线灰
 */
+ (UIColor *)ym_lineGrayColor;


/**
 重要文字颜色

 @return 重要文字颜色
 */
+ (UIColor *)ym_mainTextColor;

/**
 次要文字颜色
 
 @return 次要文字颜色
 */
+ (UIColor *)ym_minorTextColor;

@end
