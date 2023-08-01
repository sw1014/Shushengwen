//
//  DynastyViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "DynastyViewController.h"
#import "Masonry.h"
#import "XiaDynastyViewController.h"
#import "ShangDynastyViewController.h"
@interface DynastyViewController ()
@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UIButton *btn5;
@property(nonatomic)UIButton *btn6;
@end

@implementation DynastyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"背景"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"朝代字典";
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
    
    UIImageView *imageview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"图片1"]];
    [self.view addSubview:imageview1];
    [imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 200));
        make.right.equalTo(self.view);
        make.centerY.equalTo(self.view);
    }];
    UIImageView *imageview2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"图片2"]];
    [self.view addSubview:imageview2];
    [imageview2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 200));
        make.left.equalTo(self.view);
        make.centerY.equalTo(self.view);
    }];
    
    UIView *view1=[[UIView alloc]init];
    view1.backgroundColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(3);
        make.centerX.equalTo(self.view);
        make.top.equalTo(lable1).offset(80);
        make.bottom.equalTo(self.view);
    }];
    UIButton *btn=[[UIButton alloc]init];
    btn.backgroundColor=[UIColor blackColor];
    btn.layer.masksToBounds=YES;
    btn.layer.cornerRadius=10;
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.centerX.equalTo(self.view);
        make.top.equalTo(view1);
    }];
    _btn1=[[UIButton alloc]init];
    _btn1.backgroundColor=[UIColor colorWithRed:8/255.0 green:63/255.0 blue:143/255.0 alpha:1];
    _btn1.layer.masksToBounds=YES;
    _btn1.layer.cornerRadius=25;
    [_btn1 setTitle:@"夏" forState:UIControlStateNormal];
    _btn1.titleLabel.font=[UIFont systemFontOfSize:25];
    [_btn1 addTarget:self action:@selector(xia) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(btn).offset(40);
    }];
    _btn2=[[UIButton alloc]init];
    _btn2.backgroundColor=[UIColor colorWithRed:32/255.0 green:131/255.0 blue:178/255.0 alpha:1];
    _btn2.layer.masksToBounds=YES;
    _btn2.layer.cornerRadius=25;
    [_btn2 setTitle:@"商" forState:UIControlStateNormal];
    _btn2.titleLabel.font=[UIFont systemFontOfSize:25];
     [_btn2 addTarget:self action:@selector(shang) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn1).offset(90);
    }];
    _btn3=[[UIButton alloc]init];
    _btn3.backgroundColor=[UIColor colorWithRed:8/255.0 green:63/255.0 blue:143/255.0 alpha:1];
    _btn3.layer.masksToBounds=YES;
    _btn3.layer.cornerRadius=25;
    [_btn3 setTitle:@"周" forState:UIControlStateNormal];
     [_btn3 addTarget:self action:@selector(zhou) forControlEvents:UIControlEventTouchDown];
    _btn3.titleLabel.font=[UIFont systemFontOfSize:25];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn2).offset(90);
    }];
    _btn4=[[UIButton alloc]init];
    _btn4.backgroundColor=[UIColor colorWithRed:32/255.0 green:131/255.0 blue:178/255.0 alpha:1];
    _btn4.layer.masksToBounds=YES;
    _btn4.layer.cornerRadius=25;
    [_btn4 setTitle:@"春" forState:UIControlStateNormal];
     [_btn4 addTarget:self action:@selector(chun) forControlEvents:UIControlEventTouchDown];
    _btn4.titleLabel.font=[UIFont systemFontOfSize:25];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn3).offset(90);
    }];
    _btn5=[[UIButton alloc]init];
    _btn5.backgroundColor=[UIColor colorWithRed:8/255.0 green:63/255.0 blue:143/255.0 alpha:1];
    _btn5.layer.masksToBounds=YES;
    _btn5.layer.cornerRadius=25;
    [_btn5 setTitle:@"战" forState:UIControlStateNormal];
     [_btn5 addTarget:self action:@selector(zhan) forControlEvents:UIControlEventTouchDown];
    _btn5.titleLabel.font=[UIFont systemFontOfSize:25];
    [self.view addSubview:_btn5];
    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn4).offset(90);
    }];
    _btn6=[[UIButton alloc]init];
    _btn6.backgroundColor=[UIColor colorWithRed:32/255.0 green:131/255.0 blue:178/255.0 alpha:1];
     [_btn6 addTarget:self action:@selector(qin) forControlEvents:UIControlEventTouchDown];
    _btn6.layer.masksToBounds=YES;
    _btn6.layer.cornerRadius=25;
    [_btn6 setTitle:@"秦" forState:UIControlStateNormal];
    _btn6.titleLabel.font=[UIFont systemFontOfSize:25];
    [self.view addSubview:_btn6];
    [_btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_btn5).offset(90);
    }];
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"前2146年起 夏朝";
    lable2.font=[UIFont systemFontOfSize:16];
    lable2.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn1);
        make.right.equalTo(_btn1).offset(-30);
    }];
    UILabel *lable3=[[UILabel alloc]init];
    lable3.text=@"殷商 前1600年起";
    lable3.font=[UIFont systemFontOfSize:16];
    lable3.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn2);
        make.left.equalTo(_btn2).offset(55);
    }];
    UILabel *lable4=[[UILabel alloc]init];
    lable4.text=@"前1046年起 西周";
    lable4.font=[UIFont systemFontOfSize:16];
    lable4.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable4];
    [lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn3);
        make.right.equalTo(_btn3).offset(-30);
    }];
    UILabel *lable5=[[UILabel alloc]init];
    lable5.text=@"春秋 前770年起";
    lable5.font=[UIFont systemFontOfSize:16];
    lable5.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable5];
    [lable5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn4);
        make.left.equalTo(_btn4).offset(55);
    }];
    UILabel *lable6=[[UILabel alloc]init];
    lable6.text=@"前5世纪起 战国";
    lable6.font=[UIFont systemFontOfSize:16];
    lable6.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable6];
    [lable6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn5);
        make.right.equalTo(_btn5).offset(-30);
    }];
    UILabel *lable7=[[UILabel alloc]init];
    lable7.text=@"秦朝 前221年起";
    lable7.font=[UIFont systemFontOfSize:16];
    lable7.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:lable7];
    [lable7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 30));
        make.centerY.equalTo(_btn6);
        make.left.equalTo(_btn6).offset(55);
    }];
    
    
}
-(void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)xia
{
    XiaDynastyViewController *v1=[[XiaDynastyViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)shang
{
    ShangDynastyViewController *v1=[[ShangDynastyViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)zhou
{
    
}
-(void)chun
{
    
}
-(void)zhan
{
    
}
-(void)qin
{
    
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
