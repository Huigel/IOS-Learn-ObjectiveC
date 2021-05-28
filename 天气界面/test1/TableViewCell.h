//
//  TableViewCell.h
//  test1
//
//  Created by 李浩宇 on 2021/5/15.
//

#import <UIKit/UIKit.h>
#import"CityAPI.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property struct City city;

@property (nonatomic, strong) UIImageView *imgWeather;

@property (nonatomic, strong) UILabel *temperature;

//@property (nonatomic, strong) CityModel *cityModel;


+ (CGFloat)getCellHeightByDesc:(NSString *)strDesc;

+ (instancetype)cellWithTableView:(UITableView *)tableView;




@end

NS_ASSUME_NONNULL_END
