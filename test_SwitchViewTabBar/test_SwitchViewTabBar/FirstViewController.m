//
//  FirstViewController.m
//  test_SwitchViewTabBar
//
//  Created by 李浩宇 on 2021/6/19.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor redColor];
    
    self.title=@"redTitle";
    
    UIImage *sunImage=[UIImage imageWithCGImage:[UIImage imageNamed:@"sun"].CGImage scale:10 orientation:UIImageOrientationUp];
    
    //UITabBarItem *barItem=[[UITabBarItem alloc] initWithTitle:@"redBarTitle" image:[UIImage imageNamed:@"sun"] tag:1];
    
    UITabBarItem *barItem=[[UITabBarItem alloc] initWithTitle:@"redBarTitle" image:sunImage tag:1];
    

    
    barItem.imageInsets=UIEdgeInsetsMake(20, 0, 0, 0);
    
    
    barItem.selectedImage=[UIImage imageNamed:@"sun"];
    barItem.badgeValue=@"5";
    /*
    UITabBarAppearance *appearance = [UITabBarAppearance new];
    appearance.stackedLayoutAppearance.normal.titlePositionAdjustment = UIOffsetMake(0, 100);
    appearance.stackedLayoutAppearance.selected.titlePositionAdjustment = UIOffsetMake(0, 100);
    barItem.standardAppearance = appearance;
    */

    self.tabBarItem=barItem;
    /*
    self.tabBarItem.title=@"redTabTitle";
    
    self.tabBarItem.image=[UIImage imageNamed:@"sun"];
    self.tabBarItem.imageInsets=UIEdgeInsetsMake(8, 0, -8, 0);
    
    self.tabBarItem.selectedImage=[UIImage imageNamed:@"sun"];
    
    self.tabBarItem.badgeValue=@"5";
    */
     
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
