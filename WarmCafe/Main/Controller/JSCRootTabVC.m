//
//  JSCRootTabVC.m
//  WarmCafe
//
//  Created by jersey on 26/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "JSCRootTabVC.h"

#import "JSCRootTabBarVM.h"
#import "JSCNavigationController.h"
#import <AudioToolbox/AudioServices.h>

@interface JSCRootTabVC ()<UITabBarControllerDelegate,UITabBarDelegate>

@property (nonatomic, strong) JSCRootTabBarVM *model;

@end

@implementation JSCRootTabVC
@synthesize systemVersion = _systemVersion;
@synthesize opacity = _opacity;
@synthesize detailsLabelText = _detailsLabelText;
#pragma mark - 1.View Controller Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //1.设置导航栏
    [self setupNavBar];
    //2.设置view
    [self setupView];
    //3.请求数据
    [self setupData];
    //4.设置通知
    [self setupNotification];
    
    UIButton* customButton = [UIButton buttonWithType:UIButtonTypeCustom];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 2.SettingView and Style

- (void)setupNavBar
{
    
}

- (void)setupView
{
    self.view.backgroundColor = [UIColor ym_mainRedColor];
    
    self.model = [[JSCRootTabBarVM alloc] init];
    
    NSMutableArray* vcArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < self.model.items.count; i++) {
        NSString* vcClassString = self.model.items[i].viewController;
        BOOL isNavigation = self.model.items[i].hasNavigation;
        UIViewController* itemVC = [[NSClassFromString(vcClassString) alloc] init];
        if (isNavigation) {
            itemVC = [[JSCNavigationController alloc] initWithRootViewController:itemVC];
        }
        [vcArray addObject:itemVC];
    }
    [self setViewControllers:vcArray];
    
    for (NSInteger i = 0; i < self.model.items.count; i++) {
        UITabBarItem* tabBarItem = self.tabBar.items[i];
        if (tabBarItem) {
            tabBarItem.title = self.model.items[i].title;
            //设置字体位置偏移。
            //设置Item 图片。
            UIImage* image = [UIImage imageNamed:self.model.items[i].image];
            UIImage* selectedImage = [UIImage imageNamed:self.model.items[i].selectedImage];
            tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
            //设置字体大小颜色。
            [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor ym_blackColor]} forState:UIControlStateNormal];
            [tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorWithRed:19 / 255.0 green:144/ 255.0 blue:87/ 255.0 alpha:1]} forState:UIControlStateSelected];
        }
    }
    
    self.tabBar.translucent = NO;
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor colorWithRed:19/255.0  green:144/255.0 blue:86/255.0 alpha:1];
    //    self.tabBar.backgroundImage = [[UIImage ym_imageWithString:viewModel.tabBarBg] ym_imageForTabBarBackground];
    
    
    self.delegate = self;
    
}

- (void)reloadView
{
    
}

#pragma mark - 3.Request Data

- (void)setupData
{

}

#pragma mark - 4.UITableViewDataSource and UITableViewDelegate

#pragma mark - 5.Event Response

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
}

#pragma mark - 6.Private Methods

- (void)setupNotification
{
    
}

#pragma mark - 7.GET & SET

//- (void)setSystemVersion:(NSString* )systemVersion
//{
//
//}

- (void)setOpacity:(float)opacity
{
    _opacity = opacity;
}

- (void)setSystemVersion:(NSString *)systemVersion
{
    _systemVersion = systemVersion;
}

//- (NSString *)detailsLabelText
//{
//
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
