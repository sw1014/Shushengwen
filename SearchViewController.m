//
//  SearchViewController.m
//  shushengwen
//
//  Created by 201wangyan on 2019/7/12.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "SearchViewController.h"
#import "AFNetworking.h"
#import "Masonry.h"
@interface SearchViewController ()<UIImagePickerControllerDelegate,UITextViewDelegate>
@property(nonatomic)UITextView *textview1;//汉字
@property(nonatomic)UITextView *textview2;//拼音
@property(nonatomic)UITextView *textview3;//部首
@property(nonatomic)UITextView *textview4;//详解
@property(nonatomic)UILabel *lable1;
@property(nonatomic)UILabel *lable2;
@property(nonatomic)UILabel *lable3;
@property(nonatomic)UILabel *lable4;
@property(nonatomic)UILabel *lable5;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *back=[UIImage imageNamed:@"背景"];
    self.view.layer.contents=(id)back.CGImage;
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.top.equalTo(self.view).offset(35);
    }];
    
    _search=[[UITextField alloc]init];
    _search.text=self.text;
    _search.font=[UIFont fontWithName:@"华文宋体" size:15];
    _search.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    _search.layer.borderWidth=1.5;
    _search.layer.borderColor=[UIColor colorWithRed:91/255.0 green:91/255.0 blue:91/255.0 alpha:1].CGColor;
    _search.layer.masksToBounds=YES;
    _search.layer.cornerRadius=17.5;
    _search.tintColor=[UIColor colorWithRed:91/255.0 green:91/255.0 blue:91/255.0 alpha:1];
    _search.keyboardType=UIKeyboardTypeDefault;
    _search.returnKeyType=UIReturnKeySearch;
    [self.view addSubview:_search];
    [_search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(290, 35));
        make.centerY.equalTo(btn1);
        make.left.equalTo(btn1).offset(30);
    }];
    //设置搜索框的左侧图标
    UIImageView *imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"搜索2"]];
    _search.leftView=imageview;
    _search.leftViewMode=UITextFieldViewModeAlways;
    _search.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    [imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(30, 20));
    }];
    
    UIButton *btn2=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn2 setTitle:@"确定" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor colorWithRed:91/255.0 green:91/255.0 blue:91/255.0 alpha:1]  forState:UIControlStateNormal];
    btn2.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn2 addTarget:self action:@selector(search1) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.right.equalTo(self.view).offset(0);
        make.centerY.equalTo(_search);
    }];
 
    _textview1=[[UITextView alloc]init];
    _textview1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [_textview1 setFont:[UIFont systemFontOfSize:15]];
    _textview1.editable=NO;
    _textview1.delegate=self;
    
    _textview2=[[UITextView alloc]init];
    _textview2.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [_textview2 setFont:[UIFont systemFontOfSize:15]];
    _textview2.editable=NO;
   _textview2.delegate=self;
    
    _textview3=[[UITextView alloc]init];
    _textview3.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [_textview3 setFont:[UIFont systemFontOfSize:15]];
    _textview3.editable=NO;
   _textview3.delegate=self;
    
    _textview4=[[UITextView alloc]init];
    _textview4.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [_textview4 setFont:[UIFont systemFontOfSize:15]];
    _textview4.editable=NO;
    _textview4.delegate=self;
    
    
 
    
    
    
    
    
}
-(void)search1
{
   
 
    NSDictionary *dic1=@{
                         @"word":self.search.text,
                         @"dtype":@"",
                         @"key":@"7d508fac448f6038afc56309df85824f",
                         };
    AFHTTPSessionManager *manager1=[AFHTTPSessionManager manager];
    [manager1 GET:@"http://v.juhe.cn/xhzd/query" parameters:dic1 progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *nsdic=responseObject;
        NSLog(@"%@",nsdic);
        NSDictionary *dicx1=[nsdic objectForKey:@"result"];
        NSString *str1=[dicx1 objectForKey:@"zi"];//获取汉字
        NSString *str2=[dicx1 objectForKey:@"pinyin"];
        NSString *str3=[dicx1 objectForKey:@"bushou"];
        NSString *str4=[dicx1 objectForKey:@"bihua"];
        NSArray *arr1=[dicx1 objectForKey:@"xiangjie"];
        NSString *str5=@"";
        for(int i=0;i<arr1.count;i++)
        {
            NSString *string=arr1[i];
            str5=[str5 stringByAppendingFormat:@"\n%@",string];
            
        }
        if(!([str1 isKindOfClass:[NSNull class]] || [str1 isEqual:[NSNull null]] || str1 == nil))
        {
            //lable的设置
            _lable1=[[UILabel alloc]init];
            _lable1.text=@"汉字:";
            [self.view addSubview:_lable1];
            [_lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(50, 50));
                make.left.equalTo(self.view).offset(20);
                make.top.equalTo(_search).offset(50);
            }];
           _textview1.text=str1;
            [self.view addSubview:_textview1];
            [_textview1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(300, _textview1.contentSize.height));
                make.centerY.equalTo(_lable1);
                make.left.equalTo(_lable1).offset(50);
            }];
        }
        if(!([str2 isKindOfClass:[NSNull class]] || [str2 isEqual:[NSNull null]] || str2 == nil))
        {
            _lable2=[[UILabel alloc]init];
            _lable2.text=@"拼音:";
            [self.view addSubview:_lable2];
            [_lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(50, 50));
                make.left.equalTo(self.view).offset(20);
                make.top.equalTo(_lable1).offset(50);
            }];
            _textview2.text=str2;
            [self.view addSubview:_textview2];
            [_textview2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(300, _textview2.contentSize.height));
                make.centerY.equalTo(_lable2);
                make.left.equalTo(_lable2).offset(50);
            }];
        }
        if(!([str3 isKindOfClass:[NSNull class]] || [str3 isEqual:[NSNull null]] || str3 == nil))
        {
            _lable3=[[UILabel alloc]init];
            _lable3.text=@"部首:";
            [self.view addSubview:_lable3];
            [_lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(50, 50));
                make.left.equalTo(self.view).offset(20);
                make.top.equalTo(_lable2).offset(50);
            }];
            _textview3.text=str3;
            [self.view addSubview:_textview3];
            [_textview3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(300, _textview3.contentSize.height));
                make.centerY.equalTo(_lable3);
                make.left.equalTo(_lable3).offset(50);
            }];
        }
        if(!([str4 isKindOfClass:[NSNull class]] || [str4 isEqual:[NSNull null]] || str4 == nil))
        {
            
            NSLog(@"FUCK%@",_lable5);
            if(_lable5){
                [_lable5 removeFromSuperview];
            }
            _lable5=[[UILabel alloc]init];
            NSString *str=[[NSString alloc]init];
            str=@"";
            str=[str stringByAppendingFormat:@"笔划共有%@划",str4];
            _lable5.text=str;
            [self.view addSubview:_lable5];
            [_lable5 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(120, 50));
                make.left.equalTo(self.view).offset(20);
                make.top.equalTo(_lable3).offset(50);
            }];
        }
        if(!([str5 isKindOfClass:[NSNull class]] || [str5 isEqual:[NSNull null]] || str5 == nil))
        {
            _lable4=[[UILabel alloc]init];
            _lable4.text=@"详解:";
            [self.view addSubview:_lable4];
            [_lable4 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(50, 50));
                make.left.equalTo(self.view).offset(20);
                make.top.equalTo(_lable5).offset(50);
            }];
            _textview4.text=str5;
            [_textview4 setTextColor:[UIColor colorWithRed:121/255.0 green:121/255.0 blue:121/255.0 alpha:1]];
            [self.view addSubview:_textview4];
            [_textview4 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.size.mas_equalTo(CGSizeMake(300, 250));
                make.top.equalTo(_lable4).offset(50);
                make.left.equalTo(self.view).offset(20);
            }];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSError *err=error;
        NSLog(@"%@",err);
        NSLog(@"失败");
    }];
}
-(void)fanhui
{
    [self.delegate passValue:self.search.text];
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
