//
//  XFHomeListModel.h
//  XFAudioPlayer
//
//  Created by 许锋 on 2018/2/1.
//  Copyright © 2018年 许锋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XFHomeListModel : NSObject

/**
 *图片URL
 */
@property(nonatomic, copy)NSString * imgUrl;

/**
 *课程名称
 */
@property(nonatomic, copy)NSString * courseName;

/**
 *课程时长
 */
@property(nonatomic, copy)NSString * courseDuartion;

/**
 *老师姓名
 */
@property(nonatomic, copy)NSString * teacherName;

/**
 *音频URL
 */
@property(nonatomic, copy)NSString * audioUrl;


@end
