//
//  UIView+YMTool.h
//  YEAMoney
//
//  Created by suke on 16/7/26.
//  Copyright © 2016年 YEAMoney. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "YMSettingSelectView.h"

@interface UIView (YMTool)

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize size;

+ (id)ym_viewWithFrame:(CGRect)frame;

- (void)ym_shakeAnimation;

- (void)ym_showOnWindowAnimations:(void (^)(void))animations;
- (void)ym_hideFromWindowAnimations:(void (^)(void))animations;

- (void)ym_showOnWindowAnimations:(void (^)(void))animations notifacationName:(NSString *)notifacationName;        //点击空白页 按钮发送通知。

@end
