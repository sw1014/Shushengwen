//
//  calligrapherViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "calligrapherViewController.h"
#import "Masonry.h"
@interface calligrapherViewController ()
@end

@implementation calligrapherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIScrollView *myscrollview=[[UIScrollView alloc]initWithFrame:self.view.frame];
    [myscrollview setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+300)];
    myscrollview.scrollEnabled=YES;
    [self.view addSubview:myscrollview];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"王珣";
    lable1.adjustsFontSizeToFitWidth = YES;
    lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(myscrollview).offset(20);//一定是针对scrollview的相对位置
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview1=[[UITextView alloc]init];
    textview1.text=@"王珣（349年—400年6月24日），字元琳 ，小字法护 ，琅邪临沂（今山东省临沂市）人。东晋大臣、书法家，丞相王导之孙、中领军王洽之子。王珣工书法，董其昌称其“潇洒古澹，东晋风流，宛然在眼。”其代表作《伯远帖》是东晋时难得的法书真迹，且是东晋王氏家族存世的唯一真迹，一直被历代书法家、收藏家、鉴赏家视为稀世瑰宝。";
    [textview1 setFont:[UIFont systemFontOfSize:14]];
    [textview1 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview1];
    [textview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 150));
        make.top.equalTo(lable1).offset(30);
        make.centerX.equalTo(myscrollview);
    }];
    UIView *view1=[[UIView alloc]init];
    view1.backgroundColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
    [myscrollview addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(textview1);
        make.left.equalTo(textview1);
        make.top.equalTo(textview1).offset(150);
    }];
    
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"佚名";
    lable2.adjustsFontSizeToFitWidth = YES;
    lable2.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable2.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1).offset(20);
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview2=[[UITextView alloc]init];
    textview2.text=@"《曹娥诔辞》是自东晋流传迄今的楷书墨迹，因卷后署有“升平二年”年款，又名《升平帖》。所书内容即为碑文。此卷屡经刻石，故有《曹娥碑》之称。通篇以小楷书写就，捺笔厚重、结体扁方，尚存隶书笔意，从中可以窥见早期楷书的笔法、结体特征。此卷历来有王羲之墨迹一说，至宋高宗赵构时明确为晋时佚名之作。";
    [textview2 setFont:[UIFont systemFontOfSize:14]];
    [textview2 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview2];
    [textview2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 150));
        make.top.equalTo(lable2).offset(30);
        make.centerX.equalTo(myscrollview);
    }];
    UIView *view2=[[UIView alloc]init];
    view2.backgroundColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
    [myscrollview addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(textview2);
        make.left.equalTo(textview2);
        make.top.equalTo(textview2).offset(150);
    }];
    UILabel *lable3=[[UILabel alloc]init];
    lable3.text=@"索靖";
    lable3.adjustsFontSizeToFitWidth = YES;
    lable3.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable3.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2).offset(20);
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview3=[[UITextView alloc]init];
    textview3.text=@"索靖善章草，传东汉张芝之法，其书险峻坚劲。其章草书，自名“银钩虿尾”。时人称“瓘得伯英之筋，靖得伯英之肉。”索靖章草自成一家，张怀瓘评道“幼安善章草，书出于韦诞，峻险过之，有若山形中裂，水势悬流，云岭孤松，冰河危石，其坚劲则古今不逮。”著有《草书状》等。";
    [textview3 setFont:[UIFont systemFontOfSize:14]];
    [textview3 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview3];
    [textview3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 150));
        make.top.equalTo(lable3).offset(30);
        make.centerX.equalTo(self.view);
    }];
    UIView *view3=[[UIView alloc]init];
    view3.backgroundColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
    [myscrollview addSubview:view3];
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(textview3);
        make.left.equalTo(textview3);
        make.top.equalTo(textview3).offset(150);
    }];
    
    UILabel *lable4=[[UILabel alloc]init];
    lable4.text=@"王羲之";
    lable4.adjustsFontSizeToFitWidth = YES;
    lable4.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable4.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable4];
    [lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view3).offset(20);
        make.centerX.equalTo(self.view);
    }];
    UITextView *textview4=[[UITextView alloc]init];
    textview4.text=@"王羲之（303—361，一说321—379），字逸少，东晋时期书法家，有“书圣”之称。琅琊临沂（今山东临沂）人，后迁会稽山阴（今浙江绍兴），晚年隐居剡县金庭。其书法兼善隶、草、楷、行各体，精研体势，心摹手追，广采众长，备精诸体，冶于一炉，摆脱了汉魏笔风，自成一家，影响深远。风格平和自然，笔势委婉含蓄，遒美健秀。";
    [textview4 setFont:[UIFont systemFontOfSize:14]];
    [textview4 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview4];
    [textview4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 150));
        make.top.equalTo(lable4).offset(30);
        make.centerX.equalTo(self.view);
    }];
    UIView *view4=[[UIView alloc]init];
    view4.backgroundColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
    [myscrollview addSubview:view4];
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(textview4);
        make.left.equalTo(textview4);
        make.top.equalTo(textview4).offset(150);
    }];
    
    
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
