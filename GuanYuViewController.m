//
//  GuanYuViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/7/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "GuanYuViewController.h"
#import "Masonry.h"
@interface GuanYuViewController ()
@property(nonatomic)UIImageView *imageview1;
@property(nonatomic)UILabel *lable1;
@property(nonatomic)UILabel *lable2;
@property(nonatomic)UILabel *lable3;
@property(nonatomic)UILabel *lable4;
@property(nonatomic)UILabel *lable5;
@property(nonatomic)UILabel *lable6;
@property(nonatomic)UILabel *lable7;
@end

@implementation GuanYuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"背景"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 64)];
    view1.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view1];
   
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"关于书生文";
    lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(view1).offset(5);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.centerY.equalTo(view1).offset(5);
    }];
    
    _imageview1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"图标"]];
    [self.view addSubview:_imageview1];
    [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(120, 120));
        make.top.equalTo(self.view).offset(90);
        make.centerX.equalTo(self.view);
    }];
    _lable1=[[UILabel alloc]init];
    _lable1.text=@"书生文V1.0.1 beta";
    _lable1.adjustsFontSizeToFitWidth = YES;
    _lable1.numberOfLines = 0;
    _lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lable1];
    [_lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_imageview1).offset(140);
        make.centerX.equalTo(_imageview1);
    }];
    _lable2=[[UILabel alloc]init];
    _lable2.text=@"简介:";
    _lable2.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable2.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:_lable2];
    [_lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lable1).offset(50);
        make.left.equalTo(self.view).offset(35);
    }]; 
    _lable7=[[UILabel alloc] init];
    _lable7.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable7.lineBreakMode=NSLineBreakByWordWrapping;
    _lable7.numberOfLines=0;
    self.lable7.text=@"APP为非赢利应用，目前支持Android4.0+版本，UI素材来自千库网，文字材料来自新华字典和汉典。方正字库非商业版本提供字体“方正清刻本悦宋”授权";
    [self.view addSubview:self.lable7];
    [_lable7 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(_lable2).offset(50);
        make.top.equalTo(_lable2);
        make.trailing.equalTo(self.view).offset(-20);
    }];
    
    _lable3=[[UILabel alloc]init];
    _lable3.text=@"功能详细介绍";
    _lable3.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable3.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:_lable3];
    [_lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lable7).offset(120);
        make.left.equalTo(self.view).offset(35);
    }];
    _lable4=[[UILabel alloc]init];
    _lable4.text=@"微信公众号:书生文";
    _lable4.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable4.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:_lable4];
    [_lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lable3).offset(50);
        make.left.equalTo(self.view).offset(35);
    }];
    _lable5=[[UILabel alloc]init];
    _lable5.text=@"用户交流QQ群:725585849";
    _lable5.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable5.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:_lable5];
    [_lable5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lable4).offset(50);
        make.left.equalTo(self.view).offset(35);
    }];
    _lable6=[[UILabel alloc]init];
    _lable6.text=@"建议与反馈:ww.fzu.edu@gmail.com";
    _lable6.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable6.textAlignment=NSTextAlignmentLeft;
    [self.view addSubview:_lable6];
    [_lable6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_lable5).offset(50);
        make.left.equalTo(self.view).offset(35);
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
