//
//  mainViewController.m
//  书生文
//
//  Created by 201wangyan on 2019/7/9.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "mainViewController.h"
#import "Child1ViewController.h"
#import "Child2ViewController.h"
#import "Child3ViewController.h"
#import "FSScrollContentView.h"
@interface mainViewController ()<FSPageContentViewDelegate>
@property (nonatomic, strong) FSPageContentView *pageContentView;
@property (nonatomic, strong) FSSegmentTitleView *titleView;
@end

@implementation mainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableArray *childVCs = [[NSMutableArray alloc]init];
    Child1ViewController *vc1=[[Child1ViewController alloc]init];
    [childVCs addObject:vc1];
    Child2ViewController *vc2=[[Child2ViewController alloc]init];
    [childVCs addObject:vc2];
    Child3ViewController *vc3=[[Child3ViewController alloc]init];
    [childVCs addObject:vc3];
    self.pageContentView = [[FSPageContentView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)) childVCs:childVCs parentVC:self delegate:self];
     self.pageContentView.contentViewCurrentIndex=1;//设置默认主界面  索引值为1
    [self.view addSubview:_pageContentView];
}
- (void)FSSegmentTitleView:(FSSegmentTitleView *)titleView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.pageContentView.contentViewCurrentIndex = endIndex;
}

- (void)FSContenViewDidEndDecelerating:(FSPageContentView *)contentView startIndex:(NSInteger)startIndex endIndex:(NSInteger)endIndex
{
    self.titleView.selectIndex = endIndex;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
