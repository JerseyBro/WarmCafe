//
//  UIColor+YMStyle.m
//  YEAMoney
//
//  Created by suke on 16/5/20.
//  Copyright © 2016年 YEAMoney. All rights reserved.
//

#import "UIColor+YMStyle.h"

@implementation UIColor (YMStyle)

//GB
+ (UIColor *)ym_colorForProductTypeGB
{
    return [UIColor colorWithRed:239/255.0 green:88/255.0 blue:83/255.0 alpha:1.0];
}
//YX
+ (UIColor *)ym_colorForProductTypeYX
{
    return [UIColor colorWithRed:67/255.0 green:95/255.0 blue:177/255.0 alpha:1.0];
}
//CA
+ (UIColor *)ym_colorForProductTypeCA
{
    return [UIColor colorWithRed:82/255.0 green:161/255.0 blue:254/255.0 alpha:1.0];
}


//#maize
+ (UIColor *)ym_maizeColor
{
    return [UIColor colorWithRed:246.0f / 255.0f green:189.0f / 255.0f blue:68.0f / 255.0f alpha:1.0f];
}

//知更鸟蛋蓝
+ (UIColor *)ym_robinsEggBlueColor
{
    return [UIColor colorWithRed:139.0f / 255.0f green:248.0f / 255.0f blue:248.0f / 255.0f alpha:1.0f];
}

//法国蓝
+ (UIColor *)ym_frenchBlueColor
{
    return [UIColor colorWithRed:67.0f / 255.0f green:95.0f / 255.0f blue:177.0f / 255.0f alpha:1.0f];
}

//#dodgerBlue
+ (UIColor *)ym_dodgerBlue
{
    return [UIColor colorWithRed:82.0f / 255.0f green:161.0f / 255.0f blue:254.0f / 255.0f alpha:1.0f];
}

//#brightBlue
+ (UIColor *)ym_brightBlue
{
    return [UIColor colorWithRed:0.0f / 255.0f green:118.0f / 255.0f blue:255.0f / 255.0f alpha:1.0f];
}

//白
+ (UIColor *)ym_whiteColor
{
    return [UIColor colorWithWhite:255.0f / 255.0f alpha:1.0f];
}

//黑
+ (UIColor *)ym_blackColor
{
    return [UIColor colorWithWhite:34.0f / 255.0f alpha:1.0f];
}

//黑2
+ (UIColor *)ym_blackTwoColor
{
    return [UIColor colorWithWhite:54.0f / 255.0f alpha:1.0f];
}

//珊瑚红
+ (UIColor *)ym_coralColor
{
    return [UIColor colorWithRed:239.0f / 255.0f green:88.0f / 255.0f blue:83.0f / 255.0f alpha:1.0f];
}

//浅粉灰
+ (UIColor *)ym_pinkishGreyColor
{
    return [UIColor colorWithWhite:187.0f / 255.0f alpha:1.0f];
}

//浅粉灰2
+ (UIColor *)ym_pinkishGreyTwoColor
{
    return [UIColor colorWithWhite:187.0f / 255.0f alpha:1.0f];
}

//暖灰
+ (UIColor *)ym_warmGreyColor
{
    return [UIColor colorWithWhite:136.0f / 255.0f alpha:1.0f];
}

//灰褐
+ (UIColor *)ym_greyishBrownColor
{
    return [UIColor colorWithWhite:68.0f / 255.0f alpha:1.0f];
}

//灰褐2
+ (UIColor *)ym_greyishBrownTwoColor
{
    return [UIColor colorWithWhite:74.0f / 255.0f alpha:1.0f];
}

+ (UIColor *)ym_backgroundGrayColor
{
    return [UIColor colorWithRed:239.0f / 255.0f green:239.0f / 255.0f blue:244.0f / 255.0f alpha:1.0f];
}

//手势密码灰色
+ (UIColor *)ym_GrayColor
{
    return [UIColor colorWithRed:204.0f / 255.0f green:204.0f / 255.0f blue:204.0f / 255.0f alpha:1.0f];
}

//分割线灰色
+ (UIColor *)ym_seperateLineGrayColor
{
    return [UIColor colorWithRed:204.0f / 255.0f green:204.0f / 255.0f blue:204.0f / 255.0f alpha:1.0f];
}

+ (UIColor *)ym_wealthRiskSelectedCellColor
{
    return [UIColor colorWithRed:239.0f / 255.0f green:241.0f / 255.0f blue:248.0f / 255.0f alpha:1.0f];
}

//财富页面3.1背景颜色
+ (UIColor *)ym_wealthBackgroundColor
{
    return [UIColor colorWithRed:239.f / 255.f green:239.f / 255.f blue:244.f / 255.f alpha:1.f];
}

//十六进制颜色转换
+ (UIColor *)ym_colorWithHexString:(NSString *)color
{
    //需要先判断color是否为空或null
    if (color == nil || color == NULL) {
        return [UIColor clearColor];;
    }
    if ([color isKindOfClass:[NSNull class]]) {
        return [UIColor clearColor];;
    }
    
    NSString *cString = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    // String should be 6 or 8 characters
    if ([cString length] < 6) {
        return [UIColor clearColor];
    }
    // 判断前缀
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor clearColor];
    // 从六位数值中找到RGB对应的位数并转换
    NSRange range;
    range.location = 0;
    range.length = 2;
    //R、G、B
    NSString *rString = [cString substringWithRange:range];
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:1.0f];
}

#pragma mark - v4.0

+ (UIColor *)ym_mainBlueColor
{
    return [UIColor colorWithRed:99/255.0 green:122/255.0 blue:251/255.0 alpha:1];
}

+ (UIColor *)ym_mainRedColor
{
    return [UIColor colorWithRed:251/255.0 green:115/255.0 blue:91/255.0 alpha:1];
}

+ (UIColor *)ym_lineGrayColor
{
    return [UIColor colorWithRed:200/255.0 green:199/255.0 blue:204/255.0 alpha:1];
}

+ (UIColor *)ym_mainTextColor
{
    return [UIColor colorWithWhite:51/255.0 alpha:1];
}

+ (UIColor *)ym_minorTextColor
{
    return [UIColor colorWithWhite:102/255.0 alpha:1];
}

@end

