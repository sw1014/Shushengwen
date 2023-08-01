//
//  CopyViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/22.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "CopyViewController.h"
#import "Masonry.h"
@interface CopyViewController ()

@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UIButton *btn5;
@end

@implementation CopyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor colorWithRed:40/255.0 green:40/255.0 blue:40/255.0 alpha:1];
    
    _btn1=[[UIButton alloc]init];
    _btn1.backgroundColor=[UIColor clearColor];
    [_btn1 setTitle:@"唐詩" forState:UIControlStateNormal];
    _btn1.titleLabel.font=[UIFont fontWithName:@"Helvetica-Bold" size:30];
    [_btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn1 addTarget:self action:@selector(tangshi) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(100);
    }];
    _btn2=[[UIButton alloc]init];
    _btn2.backgroundColor=[UIColor clearColor];
    [_btn2 setTitle:@"宋詞" forState:UIControlStateNormal];
    _btn2.titleLabel.font=[UIFont fontWithName:@"Helvetica-Bold" size:30];
    [_btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn2 addTarget:self action:@selector(songci) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn1).offset(100);
    }];
    _btn3=[[UIButton alloc]init];
    _btn3.backgroundColor=[UIColor clearColor];
    [_btn3 setTitle:@"元曲" forState:UIControlStateNormal];
    _btn3.titleLabel.font=[UIFont fontWithName:@"Helvetica-Bold" size:30];
    [_btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn3 addTarget:self action:@selector(yuanqv) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn2).offset(100);
    }];
    _btn4=[[UIButton alloc]init];
    _btn4.backgroundColor=[UIColor clearColor];
    [_btn4 setTitle:@"古文" forState:UIControlStateNormal];
    _btn4.titleLabel.font=[UIFont fontWithName:@"Helvetica-Bold" size:30];
    [_btn4 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn4 addTarget:self action:@selector(guwen) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn3).offset(100);
    }];
    _btn5=[[UIButton alloc]init];
    [_btn5 setImage:[UIImage imageNamed:@"cuo"] forState:UIControlStateNormal];
    _btn5.backgroundColor=[UIColor clearColor];
    [_btn5 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn5];
    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(30, 30));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn4).offset(100);
    }];
    
    
    // Do any additional setup after loading the view.
}
-(void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)tangshi
{
    
}
-(void)songci
{
    
}
-(void)yuanqv
{
    
}
-(void)guwen
{
    
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
