//
//  AppreciationViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "AppreciationViewController.h"
#import "Dynasty2ViewController.h"
#import "calligrapherViewController.h"
#import "FSScrollContentView.h"
#import "Masonry.h"
@interface AppreciationViewController ()<FSPageContentViewDelegate>
@property (nonatomic, strong) FSPageContentView *pageContentView;
@property (nonatomic, strong) FSSegmentTitleView *titleView;
@end

@implementation AppreciationViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(self.view).offset(30);
    }];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"名家欣赏";
    lable1.font=[UIFont systemFontOfSize:25];
    lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(btn1).offset(30);
        make.top.equalTo(self.view).offset(40);
    }];
    self.titleView = [[FSSegmentTitleView alloc]initWithFrame:CGRectMake(0, 64, CGRectGetWidth(self.view.bounds), 50) titles:@[@"书法家",@"朝代"] delegate:self indicatorType:FSIndicatorTypeDefault];
    self.titleView.titleNormalColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    self.titleView.titleSelectColor=[UIColor blackColor];
    self.titleView.indicatorColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
   // self.titleView.indicatorExtension=10;
    [self.view addSubview:_titleView];
    self.automaticallyAdjustsScrollViewInsets = NO;
    NSMutableArray *childVCs = [[NSMutableArray alloc]init];
    calligrapherViewController *vc1=[[calligrapherViewController alloc]init];
    [childVCs addObject:vc1];
    Dynasty2ViewController *vc2=[[Dynasty2ViewController alloc]init];
    [childVCs addObject:vc2];
    self.pageContentView = [[FSPageContentView alloc]initWithFrame:CGRectMake(0, 114, CGRectGetWidth(self.view.bounds), CGRectGetHeight(self.view.bounds)-90) childVCs:childVCs parentVC:self delegate:self];
    self.pageContentView.contentViewCurrentIndex=0;//设置默认主界面  索引值为1
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
-(void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
