//
//  TabBarController.m
//  test_SwitchViewTabBar
//
//  Created by 李浩宇 on 2021/6/19.
//

#import "TabBarController.h"
#import "MYTabBer.h"

@interface TabBarController ()

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
    MYTabBer *tabBar=[[MYTabBer alloc] init];
    tabBar.tabBarDelegate=self;
    
    [self setValue:tabBar forKeyPath:@"tabBar"];
    */
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor redColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:20.0f],NSFontAttributeName,nil] forState:UIControlStateNormal];
    
    [[UITabBarItem appearance]setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:20.0f],NSFontAttributeName,nil] forState:UIControlStateSelected];
    
    [[UITabBarItem appearance] setTitlePositionAdjustment:UIOffsetMake(0, 20)];
    
}

/*
#pragma mark - MYTabBarDelegate代理方法
- (void)tabBarDidClickPlusButton:(MYTabBar *)tabBar
{
    AddViewController *addVC= [[AddViewController alloc] init];
    
    [self presentViewController:addVC animated:YES completion:nil];
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
