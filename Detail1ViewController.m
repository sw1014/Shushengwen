//
//  Detail1ViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/7/19.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "Detail1ViewController.h"
#import "Masonry.h"
#import "GuanYuViewController.h"
#import "DynastyViewController.h"
#import "AppreciationViewController.h"
#import "CopyViewController.h"
@interface Detail1ViewController ()
@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UIButton *btn5;
@property(nonatomic)UIButton *btn6;

@end

@implementation Detail1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIButton *btn=[[UIButton alloc]init];
    [btn setImage:[UIImage imageNamed:@"首页的鸟2"] forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor whiteColor];
    [btn.layer setMasksToBounds:YES];
    [btn.layer setCornerRadius:30];
    //[btn addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view);
    }];
    _btn1=[[UIButton alloc]init];
    [_btn1 setImage:[UIImage imageNamed:@"临摹字帖"] forState:UIControlStateNormal];
    _btn1.backgroundColor=[UIColor whiteColor];
    [_btn1.layer setMasksToBounds:YES];
    [_btn1.layer setCornerRadius:30];
    [_btn1 addTarget:self action:@selector(linmo) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.bottom.equalTo(btn).offset(-130);
        make.centerX.equalTo(self.view);
    }];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"临摹字帖";
    lable1.textAlignment=NSTextAlignmentCenter;
    lable1.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(160, 20));
        make.top.equalTo(_btn1).offset(70);
        make.centerX.equalTo(_btn1);
    }];
    
    _btn2=[[UIButton alloc]init];
    [_btn2 setImage:[UIImage imageNamed:@"杂谈野说"] forState:UIControlStateNormal];
    _btn2.backgroundColor=[UIColor whiteColor];
    [_btn2.layer setMasksToBounds:YES];
    [_btn2.layer setCornerRadius:30];
    [_btn2 addTarget:self action:@selector(zatanyeshuo) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.right.equalTo(btn).offset(-130);
        make.centerY.equalTo(self.view).offset(-40);
    }];
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"杂谈野说";
    lable2.textAlignment=NSTextAlignmentCenter;
    lable2.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(160, 20));
        make.top.equalTo(_btn2).offset(70);
        make.centerX.equalTo(_btn2);
    }];
    
    _btn3=[[UIButton alloc]init];
    [_btn3 setImage:[UIImage imageNamed:@"朝代字典"] forState:UIControlStateNormal];
    _btn3.backgroundColor=[UIColor whiteColor];
    [_btn3.layer setMasksToBounds:YES];
    [_btn3.layer setCornerRadius:30];
    [_btn3 addTarget:self action:@selector(chaodaizidian) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.left.equalTo(btn).offset(130);
        make.centerY.equalTo(_btn2);
    }];
    UILabel *lable3=[[UILabel alloc]init];
    lable3.text=@"朝代字典";
    lable3.textAlignment=NSTextAlignmentCenter;
    lable3.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(160, 20));
        make.top.equalTo(_btn3).offset(70);
        make.centerX.equalTo(_btn3);
    }];
    
    _btn4=[[UIButton alloc]init];
    [_btn4 setImage:[UIImage imageNamed:@"名家欣赏"] forState:UIControlStateNormal];
    _btn4.backgroundColor=[UIColor whiteColor];
    [_btn4.layer setMasksToBounds:YES];
    [_btn4.layer setCornerRadius:30];
    [_btn4 addTarget:self action:@selector(minjiaxinshang) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.right.equalTo(btn).offset(-80);
        make.top.equalTo(btn).offset(110);
    }];
    UILabel *lable4=[[UILabel alloc]init];
    lable4.text=@"名家欣赏";
    lable4.textAlignment=NSTextAlignmentCenter;
    lable4.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:lable4];
    [lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(160, 20));
        make.top.equalTo(_btn4).offset(70);
        make.centerX.equalTo(_btn4);
    }];
    _btn5=[[UIButton alloc]init];
    [_btn5 setImage:[UIImage imageNamed:@"关于"] forState:UIControlStateNormal];
    _btn5.backgroundColor=[UIColor whiteColor];
    [_btn5.layer setMasksToBounds:YES];
    [_btn5.layer setCornerRadius:30];
    [_btn5 addTarget:self action:@selector(guanyu) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn5];
    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 60));
        make.right.equalTo(btn).offset(80);
        make.top.equalTo(btn).offset(110);
    }];
    UILabel *lable5=[[UILabel alloc]init];
    lable5.text=@"关于";
    lable5.textAlignment=NSTextAlignmentCenter;
    lable5.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:lable5];
    [lable5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(160, 20));
        make.top.equalTo(_btn5).offset(70);
        make.centerX.equalTo(_btn5);
    }];
    
    
    
    _btn6=[[UIButton alloc]init];
    [_btn6 setImage:[UIImage imageNamed:@"首页的鸟3"] forState:UIControlStateNormal];
    _btn6.backgroundColor=[UIColor whiteColor];
    [_btn6.layer setMasksToBounds:YES];
    [_btn6.layer setCornerRadius:35];
    [_btn6 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn6];
    [_btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 70));
        make.bottom.equalTo(self.view).offset(-30);
        make.trailing.equalTo(self.view).offset(-30);
    }];
    
    // Do any additional setup after loading the view.
}
-(void)guanyu
{
    GuanYuViewController *v1=[[GuanYuViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)minjiaxinshang
{
    AppreciationViewController *v1=[[AppreciationViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)chaodaizidian
{
    DynastyViewController *v1=[[DynastyViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)zatanyeshuo
{
    
}
-(void)linmo
{
    CopyViewController *v1=[[CopyViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)back
{
     [self dismissViewControllerAnimated:YES completion:nil];//返回首页
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
