//
//  ViewController.h
//  test1
//
//  Created by 李浩宇 on 2021/5/13.
//

#import <UIKit/UIKit.h>
#import "CityAPI.h"

@interface ViewController : UIViewController < UITableViewDataSource,  UITableViewDelegate >
{
    struct City*city;
    
    UITableView *tableView;
}
@property (copy,nonatomic)NSArray *citys;


@end

