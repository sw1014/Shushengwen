//
//  Dynasty2ViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "Dynasty2ViewController.h"
#import "Masonry.h"
@interface Dynasty2ViewController ()

@end

@implementation Dynasty2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UIScrollView *myscrollview=[[UIScrollView alloc]initWithFrame:self.view.frame];
    [myscrollview setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height+700)];
    myscrollview.scrollEnabled=YES;
    [self.view addSubview:myscrollview];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"三国";
    lable1.adjustsFontSizeToFitWidth = YES;
    lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(myscrollview).offset(20);//一定是针对scrollview的相对位置
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview1=[[UITextView alloc]init];
    textview1.text=@"“三国者，亦书体上一大转关也。……又书派上两大导源也。”其具体意见容或可以商量，但对三国书法的转折意义的揭示则是极有见地的。我们说它的主要发展特征是过渡性，表现在：一，从有关制度来说，三国所制定的许多制度，是后来书法发展的重要影响因素。二，从字体演变来说，楷、行的发展，三国是中间时代。三，从书家的状况看，三国时代的许多书家实际上成长于汉末，而三国时代成长起来的书家，却有许多进入了西晋，因而前后传承的特点非常突出。";
    [textview1 setFont:[UIFont systemFontOfSize:14]];
    [textview1 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview1];
    [textview1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 200));
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
        make.top.equalTo(textview1).offset(200);
    }];
    
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"魏";
    lable2.adjustsFontSizeToFitWidth = YES;
    lable2.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable2.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view1).offset(20);
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview2=[[UITextView alloc]init];
    textview2.text=@"魏的书法发展比较正常，这与武帝曹操的喜爱有关，他周围聚集了锺繇、梁鹄、韦诞、邯郸淳、卫覬等一批书家。更重要的是，建安十年他还发布了一个禁碑令，虽然扼制了隶书的应用空间，但同时却可以说为楷、行书的发展提供了机遇。这一制度在东晋时得到重申，为行书发达起了极大的作用。锺繇在楷书领域的开创性贡献，为后来二王父子奠定了坚实的基础。蜀国默默无闻；而吴国则在草书、楷书和篆隶方面都有可观，尤其几块重要的碑刻已是楷书的前驱。";
    [textview2 setFont:[UIFont systemFontOfSize:14]];
    [textview2 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview2];
    [textview2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 200));
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
        make.top.equalTo(textview2).offset(200);
    }];
    UILabel *lable3=[[UILabel alloc]init];
    lable3.text=@"晋";
    lable3.adjustsFontSizeToFitWidth = YES;
    lable3.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable3.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view2).offset(20);
        make.centerX.equalTo(myscrollview);
    }];
    UITextView *textview3=[[UITextView alloc]init];
    textview3.text=@"西晋时期的书法与三国书法有极大的相似性，具有强烈的过渡性色彩，表现在几个方面：一，重申禁碑令，使行楷的发展趋势得到保证；二，字体演变继续推进，尤其是行草书；三，出现了一种在后来成为重要的书作样式的形式，即墓志。草书领域里，《梁思永书翰残瓷片》等已经不是纯净的章草书，而带有今草的特征，流畅迭宕，气势慑人，表明草书也在向前迈进。";
    [textview3 setFont:[UIFont systemFontOfSize:14]];
    [textview3 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview3];
    [textview3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 160));
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
        make.top.equalTo(textview3).offset(170);
    }];
    
    UILabel *lable4=[[UILabel alloc]init];
    lable4.text=@"唐";
    lable4.adjustsFontSizeToFitWidth = YES;
    lable4.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable4.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable4];
    [lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view3).offset(20);
        make.centerX.equalTo(self.view);
    }];
    UITextView *textview4=[[UITextView alloc]init];
    textview4.text=@"唐代书法是一种书法形式。这一时代新风格的形式，在初唐时尚处于渐变中，至盛、中唐之际，单是从草书领域中出现了新风，随后真诸体亦别开生面，取得的发展。晚唐书法较少发展。唐代书法在书法发展史上，唐代是晋代以后的又一高峰，此时，在真、行、草、篆、隶各体书中都出现了影响深远的书家，真书、草书的影响最甚。";
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
        make.top.equalTo(textview4).offset(160);
    }];
    UILabel *lable5=[[UILabel alloc]init];
    lable5.text=@"宋";
    lable5.adjustsFontSizeToFitWidth = YES;
    lable5.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable5.textAlignment=NSTextAlignmentCenter;
    [myscrollview addSubview:lable5];
    [lable5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view4).offset(20);
        make.centerX.equalTo(self.view);
    }];
    UITextView *textview5=[[UITextView alloc]init];
    textview5.text=@"宋代书法，承唐继晋，上技五代，开创了一代新风。宋太宗时留意书法翰墨，购摹古先帝王名贤墨迹，命王著刻工为十卷，以枣木镂刻之，是为《淳化秘阁法帖》。有了帖，便打破了现书必真迹的限制，同时打破了前人法度，专门注重意趣，强调主观表现，从而开辟了新的道路。";
    [textview5 setFont:[UIFont systemFontOfSize:14]];
    [textview5 setTextColor:[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1]];
    [myscrollview addSubview:textview5];
    [textview5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(300, 130));
        make.top.equalTo(lable5).offset(30);
        make.centerX.equalTo(self.view);
    }];
    UIView *view5=[[UIView alloc]init];
    view5.backgroundColor=[UIColor colorWithRed:180/255.0 green:201/255.0 blue:195/255.0 alpha:1];
    [myscrollview addSubview:view5];
    [view5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(textview5);
        make.left.equalTo(textview5);
        make.top.equalTo(textview5).offset(140);
    }];
    
    // Do any additional setup after loading the view.
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
