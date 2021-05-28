//
//  TableViewCell.h
//  tast2oc
//
//  Created by 李浩宇 on 2021/5/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell


@property (strong,nonatomic)UILabel *citynameLabel;
@property (strong,nonatomic)UILabel *airqualityLabel;
@property (strong,nonatomic)UILabel *nowtemperatureLabel;
@property (strong,nonatomic)UILabel *maxtemperature1Label;
@property (strong,nonatomic)UILabel *mintemperature1Label;
@property (strong,nonatomic)UILabel *maxtemperature2Label;
@property (strong,nonatomic)UILabel *mintemperature2Label;
@property (strong,nonatomic)UILabel *maxtemperature3Label;
@property (strong,nonatomic)UILabel *mintemperature3Label;
@property (strong,nonatomic)UILabel *maxtemperature4Label;
@property (strong,nonatomic)UILabel *mintemperature4Label;
@property (strong,nonatomic)UILabel *maxtemperature5Label;
@property (strong,nonatomic)UILabel *mintemperature5Label;

@property (copy,nonatomic)NSString *cityname;
@property (copy,nonatomic)NSString *airquality;
@property (copy,nonatomic)NSString *nowtemperature;
@property (copy,nonatomic)NSString *maxtemperature1;
@property (copy,nonatomic)NSString *mintemperature1;
@property (copy,nonatomic)NSString *maxtemperature2;
@property (copy,nonatomic)NSString *mintemperature2;
@property (copy,nonatomic)NSString *maxtemperature3;
@property (copy,nonatomic)NSString *mintemperature3;
@property (copy,nonatomic)NSString *maxtemperature4;
@property (copy,nonatomic)NSString *mintemperature4;
@property (copy,nonatomic)NSString *maxtemperature5;
@property (copy,nonatomic)NSString *mintemperature5;

@property (strong,nonatomic)UIImageView *weathernowimage;
@property (strong,nonatomic)UIImageView *weather1image;
@property (strong,nonatomic)UIImageView *weather2image;
@property (strong,nonatomic)UIImageView *weather3image;
@property (strong,nonatomic)UIImageView *weather4image;
@property (strong,nonatomic)UIImageView *weather5image;

@property (copy,nonatomic)NSString *weathernow;
@property (copy,nonatomic)NSString *weather1;
@property (copy,nonatomic)NSString *weather2;
@property (copy,nonatomic)NSString *weather3;
@property (copy,nonatomic)NSString *weather4;
@property (copy,nonatomic)NSString *weather5;

-(NSString *)JudgeAirQualityLevel:(NSString *)airquality;//判断空气质量等级

@end

NS_ASSUME_NONNULL_END
