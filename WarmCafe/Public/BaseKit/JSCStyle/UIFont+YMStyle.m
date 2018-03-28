//
//  UIFont+YMStyle.m
//  YEAMoney
//
//  Created by suke on 16/5/20.
//  Copyright © 2016年 YEAMoney. All rights reserved.
//

#import "UIFont+YMStyle.h"

typedef NS_ENUM(NSUInteger, YMStyleFontWeight) {
    YMStyleFontWeightRegular = 0,
    YMStyleFontWeightLight,
    YMStyleFontWeightMedium,
    YMStyleFontWeightSemibold,
};

@implementation UIFont (YMStyle)

+ (UIFont *)ym_style1Font
{
    return [UIFont ym_fontWithSize:60.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style2Font
{
    return [UIFont ym_fontWithSize:20.0f weight:YMStyleFontWeightSemibold];
}

+ (UIFont *)ym_style3Font
{
    return [UIFont ym_fontWithSize:14.0f weight:YMStyleFontWeightRegular];
}

+ (UIFont *)ym_style4Font
{
    return [UIFont ym_fontWithSize:12.0f weight:YMStyleFontWeightRegular];
}

+ (UIFont *)ym_style5Font
{
    return [UIFont ym_fontWithSize:10.0f weight:YMStyleFontWeightRegular];
}

+ (UIFont *)ym_style6Font
{
    return [UIFont ym_fontWithSize:10.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style7Font
{
    return [UIFont ym_fontWithSize:40.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style8Font
{
    return [UIFont ym_fontWithSize:17.0f weight:YMStyleFontWeightMedium];
}

+ (UIFont *)ym_style9Font
{
    return [UIFont ym_fontWithSize:17.0f weight:YMStyleFontWeightRegular];
}

+ (UIFont *)ym_style10Font
{
    return [UIFont ym_fontWithSize:17.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style11Font
{
    return [UIFont ym_fontWithSize:30.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style12Font
{
    return [UIFont ym_fontWithSize:16.0f weight:YMStyleFontWeightRegular];
}

+ (UIFont *)ym_style13Font
{
    return [UIFont ym_fontWithSize:16.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style14Font
{
    return [UIFont ym_fontWithSize:13.0f weight:YMStyleFontWeightLight];
}

+ (UIFont *)ym_style15Font
{
    return [UIFont ym_fontWithSize:12.0f weight:YMStyleFontWeightLight];
}

#pragma mark - Method

+ (UIFont *)ym_fontWithSize:(CGFloat)fontSize weight:(YMStyleFontWeight)weight
{
    UIFont *font;
    if([UIFont respondsToSelector:@selector(systemFontOfSize:weight:)]) {
        CGFloat fontWeight = UIFontWeightRegular;
        switch (weight) {
            case YMStyleFontWeightLight:
                fontWeight = UIFontWeightLight;
                break;
            case YMStyleFontWeightRegular:
                fontWeight = UIFontWeightRegular;
                break;
            case YMStyleFontWeightMedium:
                fontWeight = UIFontWeightMedium;
                break;
            case YMStyleFontWeightSemibold:
                fontWeight = UIFontWeightSemibold;
                break;
                
            default:
                break;
        }
        font = [UIFont systemFontOfSize:fontSize weight:fontWeight];
    } else {
        font = [UIFont systemFontOfSize:fontSize];
    }
    return font;
}


@end

