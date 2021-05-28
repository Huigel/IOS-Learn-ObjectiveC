//
//  ViewController.h
//  tast2oc
//
//  Created by 李浩宇 on 2021/5/20.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate >
{
    UITableView *tableView;
}

@property (copy,nonatomic)NSArray *city;
@property (strong,nonatomic)IBOutlet UITableView *tableView;
@property (strong,nonatomic)UIView *headerView;
@property (strong,nonatomic)UIView *bottomView;

-(void)CreateHeaderViewContent;
-(void)CreateBottomViewContent:(int)footery :(int)footerhight;

@end

