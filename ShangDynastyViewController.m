//
//  ShangDynastyViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/23.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "ShangDynastyViewController.h"
#import "Masonry.h"
#import "OracleViewController.h"
@interface ShangDynastyViewController ()

@end

@implementation ShangDynastyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"背景"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"殷商时期";
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
    view1.backgroundColor=[UIColor colorWithRed:229/255.0 green:221/255.0 blue:230/255.0 alpha:1];
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(self.view);
        make.left.equalTo(self.view);
        make.top.equalTo(lable1).offset(80);
    }];
    UITextView *textview1=[[UITextView alloc]init];
    textview1.backgroundColor=[UIColor clearColor];
    textview1.text=@"     甲骨文是镌刻或写在龟甲和兽骨上的文字。出土在河南安阳小屯一带，因为这里曾是商代后期商王盘庚至帝辛的都城，史称为“殷”。商灭国，遂成为了废墟，后人便以“殷墟”名之。因此，甲骨文也称“殷墟文字”。其内容绝大多数是王室占卜之辞，故又称“卜辞”，或“贞卜文字”。这种文字基本上都是由契刻而成，又称“契文”、或“殷契”等。\n     甲骨文距今已有三千余年，它不仅是研究我国文字源流的最早而有系统的资料，同时也是研究甲骨文书法重要的财富。从书法的角度审视，甲骨文已具备了书法的用笔、结字、章法一共三个基本要素。从甲骨上的文字看，它们已具备了中国书法的用笔、结字、章法三要素。其用笔线条严整瘦劲，曲直粗细均备，笔画多方折，对后世篆刻的用笔用刀产生了影响。从结构字体上看，文字不仅有变化，虽大小不一，但比较均衡对称，还显示了稳定的格局。因此从章法上看，虽受骨片大小和形状的影响，仍表现了镌刻的技巧和书写的艺术特色。“甲骨书法”现今已在一些书法家和书法爱好者中流行，就证明了它的魅力。";
    [textview1 setFont:[UIFont systemFontOfSize:14]];
    [textview1 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [self.view addSubview:textview1];
    [textview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(290);
        make.height.mas_equalTo(270);
    }];
    UIView *view2=[[UIView alloc]init];
    view2.backgroundColor=[UIColor colorWithRed:229/255.0 green:221/255.0 blue:230/255.0 alpha:1];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(self.view).offset(-30);
        make.left.equalTo(self.view).offset(30);
        make.top.equalTo(textview1).offset(290);
    }];
    UIImageView *imageview3=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"甲骨文"]];
    [self.view addSubview:imageview3];
    [imageview3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.left.equalTo(view2);
        make.top.equalTo(view2).offset(20);
    }];
    
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"甲骨文";
    [lable2 setFont:[UIFont fontWithName:@"Helvetica-Bold" size:25]];
    lable2.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable2.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageview3).offset(110);
        make.centerY.equalTo(imageview3);
    }];
    UIButton *btn2=[[UIButton alloc]init];
    btn2.backgroundColor=[UIColor clearColor];
    [btn2 setTitle:@"点击进入查看" forState:UIControlStateNormal];
    btn2.titleLabel.font=[UIFont systemFontOfSize:18];//设置字体大小
    [btn2 setTitleColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(jiaguwen) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(lable2);
        make.right.equalTo(self.view).offset(-10);
        make.size.mas_equalTo(CGSizeMake(150, 30));
    }];
}
-(void)jiaguwen
{
    OracleViewController *v1=[[OracleViewController alloc]init];
    [self presentViewController:v1 animated:YES completion:nil];
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
