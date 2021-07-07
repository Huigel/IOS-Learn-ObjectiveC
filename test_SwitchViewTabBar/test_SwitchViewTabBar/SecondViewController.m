//
//  SecondViewController.m
//  test_SwitchViewTabBar
//
//  Created by 李浩宇 on 2021/6/19.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    self.title=@"yellowTitle";
    
    self.tabBarItem.title=@"yellowTabTitle";
    
    self.tabBarItem.image=[UIImage imageNamed:@"thunder"];
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"thunder"];
    
    self.tabBarItem.badgeValue=@"4";
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
