//
//  AppDelegate.m
//  test_SwitchView
//
//  Created by 李浩宇 on 2021/6/18.
//

#import "AppDelegate.h"
#import "TabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"didFinishLaunchingWithOptions");
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    TabBarController *tabBarController = [[TabBarController alloc] init];
    
    FirstViewController *firstViewController=[[FirstViewController alloc] init];
    
    SecondViewController *secondViewController=[[SecondViewController alloc] init];
    
    tabBarController.viewControllers=@[firstViewController,secondViewController];
    
    for (UIViewController *controller in tabBarController.viewControllers) {
            UIView *view= controller.view;
        }
        
        _window.rootViewController=tabBarController;
        [_window makeKeyAndVisible];
        
        return YES;
    //self.viewController = [[TabBarController alloc] initWithNibName:@"ViewController" bundle:nil];
    
    //UINavigationController *nav=[[UINavigationControlleralloc]TabBarController:view];
    
    //self.window.rootViewController = nav;
    
    //nav.navigationBar.barTintColor=[UIColor lightGrayColor];
    
    //[self.window makeKeyAndVisible];
    
  //  return YES;
}
/*
#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}
*/

@end
