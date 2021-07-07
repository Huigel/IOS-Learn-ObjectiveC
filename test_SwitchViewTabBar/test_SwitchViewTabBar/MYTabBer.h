//
//  MYTabBer.h
//  test_SwitchViewTabBar
//
//  Created by 李浩宇 on 2021/6/19.
//

#import <UIKit/UIKit.h>

@class MYTabBer;

@protocol MYTabBarDelegate <UITabBarDelegate>

@optional



@end

NS_ASSUME_NONNULL_BEGIN

@interface MYTabBer : UITabBar

@property(weak,nonatomic)id<MYTabBarDelegate> tabBarDelegate;

@end

NS_ASSUME_NONNULL_END
