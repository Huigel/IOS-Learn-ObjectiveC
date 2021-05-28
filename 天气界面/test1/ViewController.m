//
//  ViewController.m
//  test1
//
//  Created by 李浩宇 on 2021/5/13.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.citys = @[@"北京",
              @"上海",
              @"桂林",
              @"成都",
              @"临沧",
              @"郑州",
              @"黄山",
              @"台湾",
              @"长沙",
              @"岳阳"];
    

    
    //创建UITableview并设置Style为Plain
    tableView = [ [UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain ];
    
    //缩放视图，dx dy分别为上下和左右的减少量
    CGRect viewFrame = CGRectInset(self.view.bounds, 10, 40);
    
    tableView.frame = viewFrame;
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    //设置分割线与索引条颜色
    tableView.separatorColor = [UIColor grayColor];
    tableView.sectionIndexTrackingBackgroundColor = [UIColor redColor];
    
    self.navigationItem.title=@"城市        今日    周一    周二    周三    周四    周五";
    
    
    
}

//数据组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
     
    return 1;
}
 
//返回每个分段的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

{
    return [self.citys count];
}

//通过section和row确定并返回单元格
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
    UITableViewCell *cell = [ [UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    // passed in by indexPath (tell which is clicked)
    NSString *labelText = [self.citys objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = labelText;
    
    return cell;
}

//选中
 - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *city = [self.citys objectAtIndex:indexPath.row];
    
    NSLog(@"Selected %@", city);
}

 
//设置每一节的高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.0;
}

//返回第section组的头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
     
    return @"我收藏的的城市";
}
//返回第section组的尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
     
    return @"";
}

@end
