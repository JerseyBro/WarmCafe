//
//  JSCNavigationController.m
//  WarmCafe
//
//  Created by jersey on 28/3/18.
//  Copyright © 2018年 JerseyCoffee. All rights reserved.
//

#import "JSCNavigationController.h"

@interface JSCNavigationController ()

@end

@implementation JSCNavigationController

#pragma mark - 1.View Controller Life Cycle

+ (void)initialize
{
    UINavigationBar* navigationBar = [UINavigationBar appearance];
    navigationBar.translucent = NO;
}

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

#pragma mark - 6.Private Methods

- (void)setupNotification
{
    
}

#pragma mark - 7.GET & SET

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
