//
//  TableViewCell.m
//  test1
//
//  Created by 李浩宇 on 2021/5/15.
//

#import "TableViewCell.h"


@implementation TableViewCell

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



/*
+ (CGFloat)getCellHeightByDesc:(NSString *)strDesc{
     
    return 5 + 20 + [strDesc boundingRectWithSize:CGSizeMake(150, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:13]} context:nil].size.height;
}

- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
   self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
         
        if (!_imgWeather) {
            _imgWeather = [UIImageView new];
            _imgWeather.frame = CGRectMake(8, 5, 40, 40);
            [self.contentView addSubview:_imgWeather];
        }
         
        if (!_temperature) {
            _temperature = [UILabel new];
            _temperature.frame = CGRectMake(CGRectGetMaxX(_imgWeather.frame), CGRectGetMinX(_imgWeather.frame), 150, 20);
            _temperature.font = [UIFont systemFontOfSize:14];
            [self.contentView addSubview:_temperature];
        }
    }
     
    return self;
}
*/



@end
