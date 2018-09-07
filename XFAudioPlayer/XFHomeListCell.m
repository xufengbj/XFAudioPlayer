//
//  XFHomeListCell.m
//  XFAudioPlayer
//
//  Created by 许锋 on 2018/1/31.
//  Copyright © 2018年 许锋. All rights reserved.
//

#import "XFHomeListCell.h"
#import "SDWebImage/UIImageView+WebCache.h"
#import "SDWebImage/SDWebImageManager.h"


@interface XFHomeListCell()

@property (strong, nonatomic) IBOutlet UIImageView *courseIcon;
@property (strong, nonatomic) IBOutlet UILabel *courseName;

@property (strong, nonatomic) IBOutlet UILabel *courseDuartion;
@property (strong, nonatomic) IBOutlet UILabel *teacherName;

@end


@implementation XFHomeListCell

- (void)configWithModel:(XFHomeListModel *)model {
    _courseIcon.backgroundColor = [UIColor redColor];
    [_courseIcon sd_setImageWithURL:[NSURL URLWithString:model.imgUrl] placeholderImage:nil options:SDWebImageRetryFailed progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        _courseIcon.alpha = 0;
        [UIView animateWithDuration:0.5 animations:^{
            _courseIcon.alpha = 1;
        }];
    }];
    _courseName.text = model.courseName;
    _courseDuartion.text = model.courseDuartion;
    _teacherName.text = model.teacherName;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
