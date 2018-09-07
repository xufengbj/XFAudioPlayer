//
//  XFPlayManager.m
//  XFAudioPlayer
//
//  Created by 许锋 on 2018/2/8.
//  Copyright © 2018年 许锋. All rights reserved.
//

#import "XFPlayManager.h"
#import <AVFoundation/AVFoundation.h>
#import "FSAudioController.h"

@implementation XFPlayManager

/*
 *获取播放器单例
 */
+ (instancetype)sharedPlayer {
    static XFPlayManager *player;
    static AVAudioSession *session;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        player = [[self alloc] init];
        session = [AVAudioSession sharedInstance];
    });
    return player;
}

@end
