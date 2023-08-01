//
//  OracleViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/23.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "OracleViewController.h"
#import "Masonry.h"
@interface OracleViewController ()

@end

@implementation OracleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"甲骨文";
    lable1.font=[UIFont systemFontOfSize:25];
    lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(10);
        make.size.mas_equalTo(CGSizeMake(200, 80));
    }];
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.centerY.equalTo(lable1).offset(5);
    }];
    // Do any additional setup after loading the view.
}
-(void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
