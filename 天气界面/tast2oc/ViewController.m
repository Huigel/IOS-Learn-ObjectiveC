//
//  ViewController.m
//  tast2oc
//
//  Created by 李浩宇 on 2021/5/20.
//

#import "ViewController.h"
#import "TableViewCell.h"

static NSString *CellTableIdentifier=@"CellTabelIdentifier";

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableView=_tableView;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.city=@[
                @{@"cityname" : @"上海",@"airquality" : @"-1", @"nowtemperature" : @"19°", @"maxtemperature1" : @"20°", @"mintemperature1" : @"17°", @"maxtemperature2" : @"29°", @"mintemperature2" : @"19°", @"maxtemperature3" : @"32°", @"mintemperature3" : @"21°", @"maxtemperature4" : @"23°", @"mintemperature4" : @"20°", @"maxtemperature5" : @"29°", @"mintemperature5" : @"20°",
                    @"weathernow" : @"rainy", @"weather1" : @"rainy",@"weather2" : @"cloudy",@"weather3" : @"rainy",@"weather4" : @"sun",@"weather5" : @"sun"
                },
                
                @{@"cityname" : @"北京",@"airquality" : @"206", @"nowtemperature" : @"26°", @"maxtemperature1" : @"26°", @"mintemperature1" : @"12°", @"maxtemperature2" : @"24°", @"mintemperature2" : @"11°", @"maxtemperature3" : @"30°", @"mintemperature3" : @"14°", @"maxtemperature4" : @"28°", @"mintemperature4" : @"14°", @"maxtemperature5" : @"26°", @"mintemperature5" : @"14°",
                    @"weathernow" : @"sun", @"weather1" : @"cloudy",@"weather2" : @"sun",@"weather3" : @"sun",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"长沙",@"airquality" : @"21", @"nowtemperature" : @"24°", @"maxtemperature1" : @"33°", @"mintemperature1" : @"16°", @"maxtemperature2" : @"19°", @"mintemperature2" : @"14°", @"maxtemperature3" : @"22°", @"mintemperature3" : @"19°", @"maxtemperature4" : @"32°", @"mintemperature4" : @"20°", @"maxtemperature5" : @"28°", @"mintemperature5" : @"15°",
                    @"weathernow" : @"sun", @"weather1" : @"rainy",@"weather2" : @"sun",@"weather3" : @"cloudy",@"weather4" : @"cloudy",@"weather5" : @"sun"
                },
                
                @{@"cityname" : @"武汉",@"airquality" : @"110", @"nowtemperature" : @"19°", @"maxtemperature1" : @"33°", @"mintemperature1" : @"16°", @"maxtemperature2" : @"19°", @"mintemperature2" : @"14°", @"maxtemperature3" : @"22°", @"mintemperature3" : @"12°", @"maxtemperature4" : @"22°", @"mintemperature4" : @"8°", @"maxtemperature5" : @"20°", @"mintemperature5" : @"8°",
                    @"weathernow" : @"cloudy", @"weather1" : @"sun",@"weather2" : @"sun",@"weather3" : @"rainy",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"武汉",@"airquality" : @"110", @"nowtemperature" : @"19°", @"maxtemperature1" : @"33°", @"mintemperature1" : @"16°", @"maxtemperature2" : @"19°", @"mintemperature2" : @"14°", @"maxtemperature3" : @"22°", @"mintemperature3" : @"12°", @"maxtemperature4" : @"22°", @"mintemperature4" : @"8°", @"maxtemperature5" : @"20°", @"mintemperature5" : @"8°",
                    @"weathernow" : @"cloudy", @"weather1" : @"sun",@"weather2" : @"sun",@"weather3" : @"rainy",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"长沙",@"airquality" : @"21", @"nowtemperature" : @"24°", @"maxtemperature1" : @"33°", @"mintemperature1" : @"16°", @"maxtemperature2" : @"19°", @"mintemperature2" : @"14°", @"maxtemperature3" : @"22°", @"mintemperature3" : @"19°", @"maxtemperature4" : @"32°", @"mintemperature4" : @"20°", @"maxtemperature5" : @"28°", @"mintemperature5" : @"15°",
                    @"weathernow" : @"sun", @"weather1" : @"rainy",@"weather2" : @"sun",@"weather3" : @"cloudy",@"weather4" : @"cloudy",@"weather5" : @"sun"
                },
                
                @{@"cityname" : @"北京",@"airquality" : @"206", @"nowtemperature" : @"26°", @"maxtemperature1" : @"26°", @"mintemperature1" : @"12°", @"maxtemperature2" : @"24°", @"mintemperature2" : @"11°", @"maxtemperature3" : @"30°", @"mintemperature3" : @"14°", @"maxtemperature4" : @"28°", @"mintemperature4" : @"14°", @"maxtemperature5" : @"26°", @"mintemperature5" : @"14°",
                    @"weathernow" : @"sun", @"weather1" : @"cloudy",@"weather2" : @"sun",@"weather3" : @"sun",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"北京",@"airquality" : @"206", @"nowtemperature" : @"26°", @"maxtemperature1" : @"26°", @"mintemperature1" : @"12°", @"maxtemperature2" : @"24°", @"mintemperature2" : @"11°", @"maxtemperature3" : @"30°", @"mintemperature3" : @"14°", @"maxtemperature4" : @"28°", @"mintemperature4" : @"14°", @"maxtemperature5" : @"26°", @"mintemperature5" : @"14°",
                    @"weathernow" : @"sun", @"weather1" : @"cloudy",@"weather2" : @"sun",@"weather3" : @"sun",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"北京",@"airquality" : @"206", @"nowtemperature" : @"26°", @"maxtemperature1" : @"26°", @"mintemperature1" : @"12°", @"maxtemperature2" : @"24°", @"mintemperature2" : @"11°", @"maxtemperature3" : @"30°", @"mintemperature3" : @"14°", @"maxtemperature4" : @"28°", @"mintemperature4" : @"14°", @"maxtemperature5" : @"26°", @"mintemperature5" : @"14°",
                    @"weathernow" : @"sun", @"weather1" : @"cloudy",@"weather2" : @"sun",@"weather3" : @"sun",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                },
                
                @{@"cityname" : @"北京",@"airquality" : @"206", @"nowtemperature" : @"26°", @"maxtemperature1" : @"26°", @"mintemperature1" : @"12°", @"maxtemperature2" : @"24°", @"mintemperature2" : @"11°", @"maxtemperature3" : @"30°", @"mintemperature3" : @"14°", @"maxtemperature4" : @"28°", @"mintemperature4" : @"14°", @"maxtemperature5" : @"26°", @"mintemperature5" : @"14°",
                    @"weathernow" : @"sun", @"weather1" : @"cloudy",@"weather2" : @"sun",@"weather3" : @"sun",@"weather4" : @"cloudy",@"weather5" : @"rainy"
                }
    ];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:CellTableIdentifier];
    
    //创建UITableview并设置Style为Plain
    tableView = [ [UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain ];
    
    //缩放视图，dx dy分别为左右和上下的减少量
    CGRect viewFrame = CGRectInset(self.view.bounds, 0, 20);
    viewFrame=CGRectMake(0, 150, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-150-60);
    tableView.frame = viewFrame;
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    //设置分割线与索引条颜色
    tableView.separatorColor = [UIColor grayColor];
    
    //设置headerview
    _headerView = [ [UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150)];
    _headerView.backgroundColor=[UIColor lightGrayColor];
    [self CreateHeaderViewContent];
    self.tableView.tableHeaderView=_headerView;
    _headerView.alpha=1;
    [self.view addSubview:_headerView];
    
    
    _bottomView = [ [UITableView alloc] initWithFrame:CGRectMake(0,  [UIScreen mainScreen].bounds.size.height-60, [UIScreen mainScreen].bounds.size.width, 60)];
    _bottomView.backgroundColor=[UIColor lightGrayColor];
    [self CreateBottomViewContent:[UIScreen mainScreen].bounds.size.height-60 :60];
    [self.view addSubview:_bottomView];
    
    UIView *myTitle=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 70)];
    UILabel *myTitleLabel1=[[UILabel alloc] initWithFrame:CGRectMake(0,0,200,25)];
    myTitleLabel1.text=@"我 的";
    myTitleLabel1.textAlignment=NSTextAlignmentCenter;
    myTitleLabel1.textColor=[UIColor blackColor];
    myTitleLabel1.font=[UIFont fontWithName:@"Arial" size:20];
    [myTitle addSubview:myTitleLabel1];
    UILabel *myTitleLabel2=[[UILabel alloc] initWithFrame:CGRectMake(0,22,200,25)];
    myTitleLabel2.text=@"WORLD";
    myTitleLabel2.textAlignment=NSTextAlignmentCenter;
    myTitleLabel2.textColor=[UIColor blackColor];
    myTitleLabel2.font=[UIFont fontWithName:@"Arial" size:14];
    [myTitle addSubview:myTitleLabel2];
    self.navigationItem.titleView=myTitle;
    
    //UIBarButtonItem *leftButtonItem=[[UIBarButtonItem alloc]];
    
}


//数据组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
     
    return 1;
}
//返回cell数量
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.city count];
}
//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 90;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
    TableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:CellTableIdentifier /*forIndexPath:indexPath*/];
    
    if (cell == nil) {
        cell = [[TableViewCell alloc] init];
    }
    
    NSDictionary *rowDate=self.city[indexPath.row];
    
    //today
    cell.cityname=rowDate[@"cityname"];
    cell.airquality=rowDate[@"airquality"];
    cell.nowtemperature=rowDate[@"nowtemperature"];
    cell.weathernow=rowDate[@"weathernow"];
    //day1
    cell.maxtemperature1=rowDate[@"maxtemperature1"];
    cell.mintemperature1=rowDate[@"mintemperature1"];
    cell.weather1=rowDate[@"weather1"];
    //day2
    cell.maxtemperature2=rowDate[@"maxtemperature2"];
    cell.mintemperature2=rowDate[@"mintemperature2"];
    cell.weather2=rowDate[@"weather2"];
    //day3
    cell.maxtemperature3=rowDate[@"maxtemperature3"];
    cell.mintemperature3=rowDate[@"mintemperature3"];
    cell.weather3=rowDate[@"weather3"];
    //day4
    cell.maxtemperature4=rowDate[@"maxtemperature4"];
    cell.mintemperature4=rowDate[@"mintemperature4"];
    cell.weather4=rowDate[@"weather4"];
    //day5
    cell.maxtemperature5=rowDate[@"maxtemperature5"];
    cell.mintemperature5=rowDate[@"mintemperature5"];
    cell.weather5=rowDate[@"weather5"];
    
    return cell;
}

-(void)CreateHeaderViewContent{
    int i=0,headx=110,heady=13,length=45,height=15,incrementx=length+20,incrementy=height+7;
    int nowWeek=4;
    NSString *Weektext[7]={@"周一",@"周二",@"周三",@"周四",@"周五",@"周六",@"周日"};
    NSString *DayAndMouthtext[5]={@"05.27",@"05.28",@"05.29",@"05.30",@"05.31"};
    //UIView *Week[5];
    //UIView *DayAndMouth[5];
    UILabel *WeekLabel[5];
    UILabel *DayAndMouthLabel[5];
    //日
    UILabel *headerDay=[[UILabel alloc] initWithFrame:CGRectMake(20, 13, 40, 30)];
    headerDay.textColor=[UIColor blackColor];
    headerDay.text=@"27";
    headerDay.font=[UIFont fontWithName:@"Arial" size:35];
    [_headerView addSubview:headerDay];
    //月
    UILabel *headerMouth=[[UILabel alloc] initWithFrame:CGRectMake(60, 10, 30, 20)];
    headerMouth.textColor=[UIColor grayColor];
    headerMouth.text=@"5月";
    headerMouth.font=[UIFont fontWithName:@"Arial" size:15];
    [_headerView addSubview:headerMouth];
    //周
    UILabel *headerWeek=[[UILabel alloc] initWithFrame:CGRectMake(60, 30, 30, 20)];
    headerWeek.textColor=[UIColor grayColor];
    headerWeek.text=Weektext[nowWeek-1];
    headerWeek.font=[UIFont fontWithName:@"Arial" size:15];
    [_headerView addSubview:headerWeek];
    for(i=0;i<5;i++)
    {
        WeekLabel[i]=[[UILabel alloc] initWithFrame:CGRectMake(headx+i*incrementx, heady, length, height)];
        WeekLabel[i].textColor=[UIColor blackColor];
        WeekLabel[i].font=[UIFont fontWithName:@"Arial" size:15];
        WeekLabel[i].text=Weektext[(i+nowWeek-1)<7?(i+nowWeek-1):(i+nowWeek-1-7)];
        [_headerView addSubview:WeekLabel[i]];
        
        DayAndMouthLabel[i]=[[UILabel alloc] initWithFrame:CGRectMake(headx+i*incrementx, heady+incrementy, length, height)];
        DayAndMouthLabel[i].textColor=[UIColor grayColor];
        DayAndMouthLabel[i].font=[UIFont fontWithName:@"Arial" size:15];
        DayAndMouthLabel[i].text=DayAndMouthtext[i];
        [_headerView addSubview:DayAndMouthLabel[i]];
    }
    return;
}

-(void)CreateBottomViewContent:(int)footery :(int)footerhight{
    int i=3,j=5,headx=46,heady=1,length=80,incrementx=length+1,hight=60;
    UILabel *partingDot[i*j];
    
    UIButton *todayButton=[[UIButton alloc] initWithFrame:CGRectMake(headx, heady, length, hight)];
    todayButton.backgroundColor=[UIColor lightGrayColor];
    [_bottomView addSubview:todayButton];
    UILabel *todayButtonLabel1=[[UILabel alloc] initWithFrame:CGRectMake(16,5,60,25)];
    todayButtonLabel1.text=@"今 日";
    todayButtonLabel1.textColor=[UIColor grayColor];
    todayButtonLabel1.font=[UIFont fontWithName:@"Arial" size:20];
    [todayButton addSubview:todayButtonLabel1];
    UILabel *todayButtonLabel2=[[UILabel alloc] initWithFrame:CGRectMake(16,25,60,25)];
    todayButtonLabel2.text=@"20-27度";
    todayButtonLabel2.textColor=[UIColor grayColor];
    todayButtonLabel2.font=[UIFont fontWithName:@"Arial" size:14];
    [todayButton addSubview:todayButtonLabel2];
    
    
    
    UIButton *myButton=[[UIButton alloc] initWithFrame:CGRectMake(headx+incrementx, heady, length, hight)];
    myButton.backgroundColor=[UIColor lightGrayColor];
    [_bottomView addSubview:myButton];
    UILabel *myButtonLabel1=[[UILabel alloc] initWithFrame:CGRectMake(16,5,60,25)];
    myButtonLabel1.text=@"我 的";
    myButtonLabel1.textColor=[UIColor blackColor];
    myButtonLabel1.font=[UIFont fontWithName:@"Arial" size:20];
    [myButton addSubview:myButtonLabel1];
    UILabel *myButtonLabel2=[[UILabel alloc] initWithFrame:CGRectMake(16,25,60,25)];
    myButtonLabel2.text=@"WORLD";
    myButtonLabel2.textColor=[UIColor blackColor];
    myButtonLabel2.font=[UIFont fontWithName:@"Arial" size:14];
    [myButton addSubview:myButtonLabel2];
    
    
    UIButton *shareButton=[[UIButton alloc] initWithFrame:CGRectMake(headx+incrementx*2, heady, length, hight)];
    shareButton.backgroundColor=[UIColor lightGrayColor];
    [_bottomView addSubview:shareButton];
    UILabel *shareButtonLabel1=[[UILabel alloc] initWithFrame:CGRectMake(16,5,60,25)];
    shareButtonLabel1.text=@"分 享";
    shareButtonLabel1.textColor=[UIColor grayColor];
    shareButtonLabel1.font=[UIFont fontWithName:@"Arial" size:20];
    [shareButton addSubview:shareButtonLabel1];
    UILabel *shareButtonLabel2=[[UILabel alloc] initWithFrame:CGRectMake(16,25,60,25)];
    shareButtonLabel2.text=@"SHARE";
    shareButtonLabel2.textColor=[UIColor grayColor];
    shareButtonLabel2.font=[UIFont fontWithName:@"Arial" size:14];
    [shareButton addSubview:shareButtonLabel2];
    
    UIButton *moreButton=[[UIButton alloc] initWithFrame:CGRectMake(headx+incrementx*3, heady, length, hight)];
    moreButton.backgroundColor=[UIColor lightGrayColor];
    [_bottomView addSubview:moreButton];
    UILabel *moreButtonLabel1=[[UILabel alloc] initWithFrame:CGRectMake(16,5,60,25)];
    moreButtonLabel1.text=@"更 多";
    moreButtonLabel1.textColor=[UIColor grayColor];
    moreButtonLabel1.font=[UIFont fontWithName:@"Arial" size:20];
    [moreButton addSubview:moreButtonLabel1];
    UILabel *moreButtonLabel2=[[UILabel alloc] initWithFrame:CGRectMake(16,25,60,25)];
    moreButtonLabel2.text=@"MORE";
    moreButtonLabel2.textColor=[UIColor grayColor];
    moreButtonLabel2.font=[UIFont fontWithName:@"Arial" size:14];
    [moreButton addSubview:moreButtonLabel2];
    //分隔
    for(i=0;i<3;i++)
    {
        for(j=0;j<5;j++)
        {
            partingDot[i*5+j]=[[UILabel alloc] initWithFrame:CGRectMake(headx+incrementx*(i+1),5+5*j,15,15)];
            partingDot[i*5+j].text=@".";
            partingDot[i*5+j].font=[UIFont fontWithName:@"Arial" size:15];
            partingDot[i*5+j].textColor=[UIColor grayColor];
            [self.bottomView addSubview:partingDot[i*5+j]];
        }
    }

    return;
}

@end
