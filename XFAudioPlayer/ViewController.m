//
//  ViewController.m
//  XFAudioPlayer
//
//  Created by 许锋 on 2018/1/26.
//  Copyright © 2018年 许锋. All rights reserved.
//

#import "ViewController.h"
#import "XFHomeListCell.h"
#import "XFHomeListModel.h"

static NSString * const CellIdentifier = @"HomeListCell";

static CGFloat const RowHeight = 140;


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource> {
    NSMutableArray *homeListArr;
}
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [_tableView registerNib:[UINib nibWithNibName:@"XFHomeListCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:CellIdentifier];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)initData {
    homeListArr = [NSMutableArray array];
    
    XFHomeListModel * model1 =  [[XFHomeListModel alloc]init];
    model1.imgUrl = @"https://img-cdn1.ylyk.com/course-img513_1_1.jpg";
    model1.courseName = @"商业 | 科技独角兽之年";
    model1.courseDuartion = @"21'59\"";
    model1.teacherName = @"夏鹏";
    model1.audioUrl = @"https://mv-cdn1.ylyk.com/course/audio-513-1483523572-64k44100.mp3";
    
    XFHomeListModel * model2 =  [[XFHomeListModel alloc]init];
    model2.imgUrl = @"https://img-cdn1.ylyk.com/course-img506_1_1.jpg";
    model2.courseName = @"观天下 | 2017欧洲政治展望";
    model2.courseDuartion = @"21'03\"";
    model2.teacherName = @"Freddy Hu";
    model2.audioUrl = @"https://mv-cdn1.ylyk.com/course/audio-506-1483447772-64k44100.mp3";
    
    XFHomeListModel * model3 =  [[XFHomeListModel alloc]init];
    model3.imgUrl = @"https://img-cdn1.ylyk.com/course-img1_1-1515135231705-imgMogr.jpg";
    model3.courseName = @"娱乐 | 2017新电影的背景故事";
    model3.courseDuartion = @"19'35\"";
    model3.teacherName = @"Miss Q";
    model3.audioUrl = @"https://mv-cdn1.ylyk.com/course/audio-2485-3081-1502687807-64k44100.mp3";
    
    XFHomeListModel * model4 =  [[XFHomeListModel alloc]init];
    model4.imgUrl = @"https://img-cdn1.ylyk.com/course-img496_1_1.jpg";
    model4.courseName = @"社会 | 2016浮世绘";
    model4.courseDuartion = @"29'14\"";
    model4.teacherName = @"崔冕";
    model4.audioUrl = @"https://mv-cdn1.ylyk.com/course/audio-496-1483007580-64k44100.mp3";
    
    XFHomeListModel * model5 =  [[XFHomeListModel alloc]init];
    model5.imgUrl = @"https://img-cdn1.ylyk.com/course-img492_1_1.jpg";
    model5.courseName = @"经济 | 稳定压倒一切";
    model5.courseDuartion = @"24'37\"";
    model5.teacherName = @"夏鹏";
    model5.audioUrl = @"https://mv-cdn1.ylyk.com/course/audio-492-1482937255-64k44100.mp3";
    
    [homeListArr addObject:model1];
    [homeListArr addObject:model2];
    [homeListArr addObject:model3];
    [homeListArr addObject:model4];
    [homeListArr addObject:model5];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return homeListArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XFHomeListCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[XFHomeListCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    XFHomeListModel * model = homeListArr[indexPath.row];
    [cell configWithModel:model];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return RowHeight;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
