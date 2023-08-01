//
//  SheZhiViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/7/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "SheZhiViewController.h"
#import "Masonry.h"
#import "User.h"
@interface SheZhiViewController ()
@property(nonatomic)UIImageView *imageview1;
@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UIButton *btn5;
@property(nonatomic)UILabel *lable1;
@end

@implementation SheZhiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 64)];
    view1.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view1];
    
    
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.centerY.equalTo(view1);
    }];
    _imageview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"头像2"]];
    _imageview1.layer.cornerRadius=37.5;
    _imageview1.layer.masksToBounds=YES;
    [self.view addSubview:_imageview1];
    [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(75, 75));
        make.top.equalTo(self.view).offset(90);
        make.centerX.equalTo(self.view);
    }];
    _lable1=[[UILabel alloc]init];
    _lable1.text=@"未登录";
    _lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lable1];
    [_lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(60, 30));
        make.top.equalTo(_imageview1).offset(75);
        make.centerX.equalTo(_imageview1);
    }];
    
    _btn1=[[UIButton alloc]init];
    [_btn1 setTitle:@"邮箱" forState:UIControlStateNormal];
    _btn1.titleLabel.font=[UIFont systemFontOfSize:18];
    _btn1.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn1 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_lable1).offset(70);
        make.centerX.equalTo(self.view).offset(-80);
    }];
    _btn2=[[UIButton alloc]init];
    [_btn2 setTitle:@"通用" forState:UIControlStateNormal];
    _btn2.titleLabel.font=[UIFont systemFontOfSize:18];
    _btn2.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn2 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn1).offset(70);
        make.centerX.equalTo(self.view).offset(-80);
    }];
    _btn3=[[UIButton alloc]init];
    [_btn3 setTitle:@"引导" forState:UIControlStateNormal];
    _btn3.titleLabel.font=[UIFont systemFontOfSize:18];
    _btn3.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn3 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn2).offset(70);
        make.centerX.equalTo(self.view).offset(-80);
    }];
    _btn4=[[UIButton alloc]init];
    [_btn4 setTitle:@"关于" forState:UIControlStateNormal];
    _btn4.titleLabel.font=[UIFont systemFontOfSize:18];
    _btn4.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn4 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn3).offset(70);
        make.centerX.equalTo(self.view).offset(-80);
    }];
    _btn5=[[UIButton alloc]init];
    [_btn5 setTitle:@"退出" forState:UIControlStateNormal];
    _btn5.titleLabel.font=[UIFont systemFontOfSize:18];
    _btn5.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
    [_btn5 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [self.view addSubview:_btn5];
    [_btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(150, 20));
        make.top.equalTo(_btn4).offset(70);
        make.centerX.equalTo(self.view).offset(-80);
    }];
    
    
    // Do any additional setup after loading the view.
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
-(void)fanhui
{
  //  [self.delegate passValue:self.search.text];
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
