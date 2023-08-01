//
//  XiaDynastyViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/23.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "XiaDynastyViewController.h"
#import "Masonry.h"
@interface XiaDynastyViewController ()

@end

@implementation XiaDynastyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"背景"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"夏朝前期";
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
    textview1.text=@"贾湖刻符\n     出现于八千多年前的河南舞阳贾湖遗址(距今9000—7800年),出土了一批刻符，号称贾湖刻符。有的学者认为只是刻符，有的认为是文字。贾湖21个刻符里，已认识的11个字，分别属于反映易学里离、坤两卦之象的卦象汉字。\n\n双墩刻符\n     七千多年前的蚌埠双墩遗址，发现630多刻划符号，丰富多样，十分罕见。双墩刻符的功能可以分为表意、戳记、计数三大类,反映了早期双墩先民的生活形态，已经具备了原始文字的性质，是汉字源头之一。\n\n半坡陶符\n     距今6000年前的属于仰韶文化的半坡遗址的陶钵口沿上刻的二三十种刻划符号，即半坡陶符，于省吾认为“是文字起源阶段所产生的一些简单文字”。其中一些是数字。\n\n青墩刻符\n   属于长江下游区域良渚文化的江苏省青墩遗址，距今5000前，有数字刻符。\n\n庄桥坟刻符\n     属于长江下游区域良渚文化的浙江省庄桥坟遗址刻符，距今5000年前，有的连字成句了。\n\n骨刻文\n     骨刻文是指在兽骨上刻画的符号——象形文字或图形文字，在山东集中发现（赤峰、关中等地也有发现），是我国最早的以记事为主的可识文字。2005年，著名考古学家、山东大学美术考古研究所所长刘凤君教授发现并命名，始称“东夷文字”，后称“骨刻文”，并认定刻画工具为玛瑙等锐角宝石，形成约在公元前2600～前1300年之间，是龙山文化时期流行的文字。自2010年底开始，著名东夷文化学者、山东省旅游行业协会专职副会长丁再献研究员将骨刻文成功系统破译，从文字的起源和构造等方面较全面的论述了与甲骨文及现代汉字的传承关系。\n\n陶寺朱文\n     山西省襄汾县的陶寺遗址，其年代约当公元前2500～前1900年。“陶寺文化不仅达到了比红山文化后期社会更高一阶段的‘方国’时代，而且确立了在当时诸方国中的中心地位，它相当于古史上的尧舜时代，亦即先秦史籍中出现的最早的‘中国’，奠定了华夏的根基。”\n\n夏代水书\n     河南省洛阳市偃师二里头夏墟出土的陶器有24个水书文字。一种比较折衷的意见认为中国文字“形成比较完整的文字体系”则在距今4000年前的夏朝中、后期。当然，这不是公认看法，因为夏代出土的文字还少。";
    [textview1 setFont:[UIFont systemFontOfSize:14]];
    [textview1 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [self.view addSubview:textview1];
    [textview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1).offset(20);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(290);
        make.bottom.equalTo(self.view);
    }];
   
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
