//
//  Child1ViewController.m
//  书生文
//
//  Created by 201wangyan on 2019/7/9.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "Child1ViewController.h"
#import "Masonry.h"
#import "SheZhiViewController.h"
#import "LoginViewController.h"
#import "User.h"
#import "Detail1ViewController.h"
@interface Child1ViewController ()
@property(nonatomic)UIImageView *imageview1;//头像
@property(nonatomic)UILabel *lable1;//显示登录状态
@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UIButton *btn5;
@property(nonatomic)UIButton *btn6;
@property(nonatomic)UIButton *btn7;
@property(nonatomic)UIButton *btn;
@property(nonatomic)UIButton *btn8;
@end

@implementation Child1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"用户界面"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    self.view.backgroundColor=[UIColor whiteColor];
    _imageview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"头像"]];
    _imageview1.layer.cornerRadius=30;
    _imageview1.layer.masksToBounds=YES;
    [self.view addSubview:_imageview1];
    [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.top.equalTo(self.view).offset(90);
        make.centerX.equalTo(self.view).offset(-110);
    }];
    _imageview1.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(login)];
    [_imageview1 addGestureRecognizer:tap];
    _lable1=[[UILabel alloc]init];
    _lable1.textColor=[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1];
    _lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lable1];
    [_lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 30));
        make.top.equalTo(_imageview1).offset(60);
        make.centerX.equalTo(_imageview1);
    }];
    
    
 
    
    _btn1=[[UIButton alloc]init];
    [_btn1 setTitle:@"我\n的\n收\n藏\n" forState:UIControlStateNormal];
    [_btn1 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn1.titleLabel.numberOfLines=[_btn1.titleLabel.text length];//实现竖行展示
    [_btn1 addTarget:self action:@selector(shoucang) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 10));
        make.top.equalTo(_lable1).offset(130);
        make.centerX.equalTo(self.view).offset(-150);
    }];
    _btn=[[UIButton alloc]init];
    _btn.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [_btn setImage:[UIImage imageNamed:@"设置"] forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(shezhi) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn];
    [_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(30, 30));
        make.centerX.equalTo(self.view).offset(-155);
        make.top.equalTo(_imageview1).offset(-55);
    }];
    _btn2=[[UIButton alloc]init];
    [_btn2 setTitle:@"我\n的\n字\n帖\n" forState:UIControlStateNormal];
    [_btn2 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn2.titleLabel.numberOfLines=[_btn1.titleLabel.text length];
    [_btn2 addTarget:self action:@selector(zitie) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 10));
        make.top.equalTo(_lable1).offset(150);
        make.centerX.equalTo(self.view).offset(-110);
    }];
    
    _btn3=[[UIButton alloc]init];
    [_btn3 setTitle:@"我\n的\n行\n程\n" forState:UIControlStateNormal];
    [_btn3 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn3.titleLabel.numberOfLines=[_btn1.titleLabel.text length];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 10));
        make.top.equalTo(_lable1).offset(170);
        make.centerX.equalTo(self.view).offset(-70);
    }];
    _btn4=[[UIButton alloc]init];
    [_btn4 setTitle:@"引导" forState:UIControlStateNormal];
    _btn4.titleLabel.font=[UIFont systemFontOfSize:15];
    _btn4.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn4 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn3).offset(70);
        make.centerX.equalTo(self.view).offset(-90);
    }];
    _btn5=[[UIButton alloc]init];
    [_btn5 setTitle:@"清除缓存" forState:UIControlStateNormal];
    _btn5.titleLabel.font=[UIFont systemFontOfSize:15];
    [_btn5 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn5.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:_btn5];
    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn4).offset(30);
        make.centerX.equalTo(self.view).offset(-90);
    }];
    _btn6=[[UIButton alloc]init];
    [_btn6 setTitle:@"关于书生文" forState:UIControlStateNormal];
    [_btn6 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn6.titleLabel.font=[UIFont systemFontOfSize:15];
    _btn6.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:_btn6];
    [_btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn5).offset(30);
        make.centerX.equalTo(self.view).offset(-90);
    }];
    _btn7=[[UIButton alloc]init];
    [_btn7 setTitle:@"反馈与建议" forState:UIControlStateNormal];
    [_btn7 setTitleColor:[UIColor colorWithRed:100/255.0 green:106/255.0 blue:104/255.0 alpha:1] forState:UIControlStateNormal];
    _btn7.titleLabel.font=[UIFont systemFontOfSize:15];
    _btn7.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [self.view addSubview:_btn7];
    [_btn7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn6).offset(30);
        make.centerX.equalTo(self.view).offset(-90);
    }];
    _btn8=[[UIButton alloc]init];
    [_btn8 setImage:[UIImage imageNamed:@"首页的鸟"] forState:UIControlStateNormal];
    _btn8.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:0];
    [_btn8.layer setMasksToBounds:YES];
    [_btn8.layer setCornerRadius:35];
    [_btn8 addTarget:self action:@selector(detail1) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn8];
    [_btn8 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 70));
        make.bottom.equalTo(self.view).offset(-30);
        make.trailing.equalTo(self.view).offset(-30);
    }];
}
-(void)detail1
{
    Detail1ViewController *v1=[[Detail1ViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)shoucang
{
    
    
}
-(void)zitie
{
    
}
-(void)login
{
    LoginViewController *v1=[[LoginViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)shezhi
{
    SheZhiViewController *v1=[[SheZhiViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:v1 animated:YES completion:nil];
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    if([User sharedInstance].name!=NULL)
    {
        self.lable1.text=[User sharedInstance].name;
    }
    else
    {
        self.lable1.text=@"未登录";
    }
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
