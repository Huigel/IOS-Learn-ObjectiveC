//
//  MYTabBer.m
//  test_SwitchViewTabBar
//
//  Created by 李浩宇 on 2021/6/19.
//

#import "MYTabBer.h"

@implementation MYTabBer

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    CGFloat tabbarButtonW = self.frame.size.width / 2;
        CGFloat tabbarButtonIndex = 0;
        for (UIView *child in self.subviews) {
            Class class = NSClassFromString(@"UITabBarButton");
            if ([child isKindOfClass:class]) {
                // 设置宽度
                CGRect temp1=child.frame;
                temp1.size.width=tabbarButtonW;
                temp1.origin.x=tabbarButtonIndex * tabbarButtonW;
                child.frame=temp1;
                // 增加索引
                tabbarButtonIndex++;
                if (tabbarButtonIndex == 2) {
                    tabbarButtonIndex++;
                }
            }
        }
}

@end
