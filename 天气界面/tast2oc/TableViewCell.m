//
//  TableViewCell.m
//  tast2oc
//
//  Created by 李浩宇 on 2021/5/22.
//

#import "TableViewCell.h"



@implementation TableViewCell



-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        int headx=110,heady=40,length=30,height=15,incrementx=length+35,incrementy=height+7;
        
        //today
        CGRect cityValueRect=CGRectMake(20, 10, 90, 15);
        self.citynameLabel=[[UILabel alloc] initWithFrame:cityValueRect];
        [self.contentView addSubview:_citynameLabel];
        
        CGRect airValueRect=CGRectMake(20, 60, 80, 15);
        self.airqualityLabel=[[UILabel alloc] initWithFrame:airValueRect];
        _airqualityLabel.font=[UIFont fontWithName:@"Arial" size:12];
        
        _airqualityLabel.textColor=[UIColor whiteColor];
        _airqualityLabel.textAlignment = NSTextAlignmentCenter;
        _airqualityLabel.layer.cornerRadius = 5;
        _airqualityLabel.layer.masksToBounds = YES;
        [self.contentView addSubview:_airqualityLabel];
        
        CGRect nowtempValueRect=CGRectMake(50, 40, 35, 15);
        self.nowtemperatureLabel=[[UILabel alloc] initWithFrame:nowtempValueRect];
        [self.contentView addSubview:_nowtemperatureLabel];
        
        _weathernowimage = [[UIImageView alloc] initWithFrame:CGRectMake(20, 30, 25, 25)];
        [self.contentView addSubview:_weathernowimage];
        
        //day1
        CGRect maxtemp1ValueRect=CGRectMake(headx, heady, length, height);
        self.maxtemperature1Label=[[UILabel alloc] initWithFrame:maxtemp1ValueRect];
        [self.contentView addSubview:_maxtemperature1Label];
        
        CGRect mintemp1ValueRect=CGRectMake(headx, heady+incrementy, length, height);
        self.mintemperature1Label=[[UILabel alloc] initWithFrame:mintemp1ValueRect];
        [self.contentView addSubview:_mintemperature1Label];
        
        _weather1image = [[UIImageView alloc] initWithFrame:CGRectMake(headx, heady-incrementy-height, length, length)];
        [self.contentView addSubview:_weather1image];
        
        //day2
        CGRect maxtemp2ValueRect=CGRectMake(headx+incrementx, heady, length, height);
        self.maxtemperature2Label=[[UILabel alloc] initWithFrame:maxtemp2ValueRect];
        [self.contentView addSubview:_maxtemperature2Label];
        
        CGRect mintemp2ValueRect=CGRectMake(headx+incrementx, heady+incrementy, length,height);
        self.mintemperature2Label=[[UILabel alloc] initWithFrame:mintemp2ValueRect];
        [self.contentView addSubview:_mintemperature2Label];
        
        _weather2image = [[UIImageView alloc] initWithFrame:CGRectMake(headx+incrementx, heady-incrementy-height, length, length)];
        [self.contentView addSubview:_weather2image];
        
        //day3
        CGRect maxtemp3ValueRect=CGRectMake(headx+incrementx*2, heady, length, height);
        self.maxtemperature3Label=[[UILabel alloc] initWithFrame:maxtemp3ValueRect];
        [self.contentView addSubview:_maxtemperature3Label];
        
        CGRect mintemp3ValueRect=CGRectMake(headx+incrementx*2, heady+incrementy, length, height);
        self.mintemperature3Label=[[UILabel alloc] initWithFrame:mintemp3ValueRect];
        [self.contentView addSubview:_mintemperature3Label];
        
        _weather3image = [[UIImageView alloc] initWithFrame:CGRectMake(headx+incrementx*2, heady-incrementy-height, length, length)];
        [self.contentView addSubview:_weather3image];
        
        //day4
        CGRect maxtemp4ValueRect=CGRectMake(headx+incrementx*3, heady, length, height);
        self.maxtemperature4Label=[[UILabel alloc] initWithFrame:maxtemp4ValueRect];
        [self.contentView addSubview:_maxtemperature4Label];
        
        CGRect mintemp4ValueRect=CGRectMake(headx+incrementx*3, heady+incrementy, length, height);
        self.mintemperature4Label=[[UILabel alloc] initWithFrame:mintemp4ValueRect];
        [self.contentView addSubview:_mintemperature4Label];
        
        _weather4image = [[UIImageView alloc] initWithFrame:CGRectMake(headx+incrementx*3, heady-incrementy-height, length, length)];
        [self.contentView addSubview:_weather4image];
        
        //day5
        CGRect maxtemp5ValueRect=CGRectMake(headx+incrementx*4, heady, length, height);
        self.maxtemperature5Label=[[UILabel alloc] initWithFrame:maxtemp5ValueRect];
        [self.contentView addSubview:_maxtemperature5Label];
        
        CGRect mintemp5ValueRect=CGRectMake(headx+incrementx*4, heady+incrementy, length, height);
        self.mintemperature5Label=[[UILabel alloc] initWithFrame:mintemp5ValueRect];
        [self.contentView addSubview:_mintemperature5Label];
        
        _weather5image = [[UIImageView alloc] initWithFrame:CGRectMake(headx+incrementx*4, heady-incrementy-height, length, length)];
        [self.contentView addSubview:_weather5image];

        
    }
    return self;
}

//today

-(void)setCityname:(NSString *)temp00{
    if(![temp00 isEqualToString:_cityname]){
        _cityname=[temp00 copy];
        self.citynameLabel.text=_cityname;
    }
}

-(void)setAirquality:(NSString *)temp01{
    NSString *tempairquality;
    if(![temp01 isEqualToString:_airquality]){
        _airquality=[temp01 copy];
        tempairquality=[self JudgeAirQualityLevel:tempairquality];
        self.airqualityLabel.text=tempairquality;
    }

    
}

-(void)setWeathernow:(NSString *)weathernow
{
    if(![weathernow isEqualToString:_weathernow]){
        _weathernow=[weathernow copy];
        self.weathernowimage.image=[UIImage imageNamed:_weathernow];
    }
}

-(NSString *)JudgeAirQualityLevel:(NSString *)tempairquality;//判断空气质量等级
{
    tempairquality=_airquality;
    if([tempairquality isEqualToString:@"无"])
    {
        _airqualityLabel.textColor=[UIColor whiteColor];
        _airqualityLabel.backgroundColor=[UIColor whiteColor];
        [self.airqualityLabel setFrame:CGRectMake(20, 60, 40, 15)];
        return tempairquality;
    }
    int air=[_airquality intValue];
    if(air<0)
    {
        tempairquality=@"数据异常";
        _airqualityLabel.backgroundColor=[UIColor blackColor];
        [self.airqualityLabel setFrame:CGRectMake(20, 60, 60, 15)];
        return tempairquality;
    }
        switch (air/50) {
            case 0:
                tempairquality = [NSString stringWithFormat:@"%@%@",tempairquality,@"优"];
                _airqualityLabel.backgroundColor=[UIColor greenColor];
                _airqualityLabel.textColor=[UIColor blackColor];
                [self.airqualityLabel setFrame:CGRectMake(20, 60, 40, 15)];
                break;
                
            case 1:
                tempairquality = [NSString stringWithFormat:@"%@%@",tempairquality,@"良"];
                _airqualityLabel.backgroundColor=[UIColor yellowColor];
                _airqualityLabel.textColor=[UIColor blackColor];
                [self.airqualityLabel setFrame:CGRectMake(20, 60, 40, 15)];
                break;
                
            case 2:
            case 3:
                tempairquality = [NSString stringWithFormat:@"%@%@",tempairquality,@"轻度污染"];
                _airqualityLabel.backgroundColor=[UIColor orangeColor];
                break;
                
            default:
                tempairquality = [NSString stringWithFormat:@"%@%@",tempairquality,@"重度污染"];
                _airqualityLabel.backgroundColor=[UIColor redColor];
                break;
        }
    return tempairquality;
}


-(void)setNowtemperature:(NSString *)temp02{
    if(![temp02 isEqualToString:_nowtemperature]){
        _nowtemperature=[temp02 copy];
        self.nowtemperatureLabel.text=_nowtemperature;
    }
}

//day1
-(void)setMaxtemperature1:(NSString *)temp11{
    if(![temp11 isEqualToString:_maxtemperature1]){
        _maxtemperature1=[temp11 copy];
        self.maxtemperature1Label.text=_maxtemperature1;
    }
}

-(void)setMintemperature1:(NSString *)temp12{
    if(![temp12 isEqualToString:_mintemperature1]){
        _mintemperature1=[temp12 copy];
        self.mintemperature1Label.text=_mintemperature1;
    }
}

-(void)setWeather1:(NSString *)weather1
{
    if(![weather1 isEqualToString:_weather1]){
        _weather1=[weather1 copy];
        self.weather1image.image=[UIImage imageNamed:_weather1];
    }
}

//day2
-(void)setMaxtemperature2:(NSString *)temp21{
    if(![temp21 isEqualToString:_maxtemperature2]){
        _maxtemperature2=[temp21 copy];
        self.maxtemperature2Label.text=_maxtemperature2;
    }
}

-(void)setMintemperature2:(NSString *)temp22{
    if(![temp22 isEqualToString:_mintemperature2]){
        _mintemperature2=[temp22 copy];
        self.mintemperature2Label.text=_mintemperature2;
    }
}

-(void)setWeather2:(NSString *)weather2
{
    if(![weather2 isEqualToString:_weather2]){
        _weather2=[weather2 copy];
        self.weather2image.image=[UIImage imageNamed:_weather2];
    }
}
//day3
-(void)setMaxtemperature3:(NSString *)temp31{
    if(![temp31 isEqualToString:_maxtemperature3]){
        _maxtemperature3=[temp31 copy];
        self.maxtemperature3Label.text=_maxtemperature3;
    }
}

-(void)setMintemperature3:(NSString *)temp32{
    if(![temp32 isEqualToString:_mintemperature3]){
        _mintemperature3=[temp32 copy];
        self.mintemperature3Label.text=_mintemperature3;
    }
}

-(void)setWeather3:(NSString *)weather3
{
    if(![weather3 isEqualToString:_weather3]){
        _weather3=[weather3 copy];
        self.weather3image.image=[UIImage imageNamed:_weather3];
    }
}
//day4
-(void)setMaxtemperature4:(NSString *)temp41{
    if(![temp41 isEqualToString:_maxtemperature4]){
        _maxtemperature4=[temp41 copy];
        self.maxtemperature4Label.text=_maxtemperature4;
    }
}

-(void)setMintemperature4:(NSString *)temp42{
    if(![temp42 isEqualToString:_mintemperature4]){
        _mintemperature4=[temp42 copy];
        self.mintemperature4Label.text=_mintemperature4;
    }
}

-(void)setWeather4:(NSString *)weather4
{
    if(![weather4 isEqualToString:_weather4]){
        _weather4=[weather4 copy];
        self.weather4image.image=[UIImage imageNamed:_weather4];
    }
}

//day5
-(void)setMaxtemperature5:(NSString *)temp51{
    if(![temp51 isEqualToString:_maxtemperature5]){
        _maxtemperature5=[temp51 copy];
        self.maxtemperature5Label.text=_maxtemperature5;
    }
}

-(void)setMintemperature5:(NSString *)temp52{
    if(![temp52 isEqualToString:_mintemperature5]){
        _mintemperature5=[temp52 copy];
        self.mintemperature5Label.text=_mintemperature5;
    }
}

-(void)setWeather5:(NSString *)weather5
{
    if(![weather5 isEqualToString:_weather5]){
        _weather5=[weather5 copy];
        self.weather5image.image=[UIImage imageNamed:_weather5];
    }
}


/*

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
*/
 
 
@end
