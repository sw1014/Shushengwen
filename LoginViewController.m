//
//  LoginViewController.m
//  书生文
//
//  Created by 201wangyan on 2019/7/9.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "LoginViewController.h"
#import "Masonry.h"
#import "AFNetworking.h"
#import "User.h"
@interface LoginViewController ()<UITextFieldDelegate>
@property(nonatomic)UIImageView *imageview1;
@property(nonatomic)UITextField *textfield1;//输入邮箱
@property(nonatomic)UITextField *textfield2;//输入密码
@property(nonatomic)UIButton *login;
@property(nonatomic)UILabel *lable1;
@property(nonatomic)UIButton *btn1;//扣扣
@property(nonatomic)UIButton *btn2;//微博
@property(nonatomic)UIButton *btn3;//微信
@property(nonatomic)UILabel *lable2;
@property(nonatomic)NSString *name;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _name=[[NSString alloc]init];
    self.view.backgroundColor=[UIColor whiteColor];
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 64)];
    view.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view];
    
    
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0];
    [btn1 addTarget:self action:@selector(fanhui) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.left.equalTo(self.view).offset(10);
        make.centerY.equalTo(view);
    }];
    UIButton *btn2=[[UIButton alloc]init];
    btn2.backgroundColor=[UIColor clearColor];
    [btn2 setTitle:@"注册" forState:UIControlStateNormal];
    btn2.titleLabel.font=[UIFont systemFontOfSize:20];
    [btn2 setTitleColor:[UIColor colorWithRed:93/255.0 green:105/255.0 blue:97/255.0 alpha:1] forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.right.equalTo(self.view).offset(-10);
        make.centerY.equalTo(view);
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
    _textfield1=[[UITextField alloc]init];
    _textfield1.clearButtonMode=UITextFieldViewModeWhileEditing;
    _textfield1.backgroundColor=[UIColor whiteColor];
    _textfield1.layer.borderWidth=0;
    _textfield1.placeholder=@"请输入邮箱";
    _textfield1.tintColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _textfield1.keyboardType=UIKeyboardTypeDefault;
    [self.view addSubview:_textfield1];
    [_textfield1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(290, 35));
        make.top.equalTo(_imageview1).offset(100);
        make.left.equalTo(btn1).offset(30);
    }];
    UIImageView *imageview=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"邮箱"]];
    _textfield1.leftView=imageview;
    _textfield1.leftViewMode=UITextFieldViewModeAlways;
    _textfield1.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    [imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 30));
    }];
    
    _textfield2=[[UITextField alloc]init];
    _textfield2.clearButtonMode=UITextFieldViewModeWhileEditing;
    _textfield2.backgroundColor=[UIColor whiteColor];
    _textfield2.layer.borderWidth=0;
    _textfield2.placeholder=@"请输入密码";
    _textfield2.tintColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _textfield2.keyboardType=UIKeyboardTypeDefault;
    [self.view addSubview:_textfield2];
    [_textfield2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(290, 35));
        make.top.equalTo(_textfield1).offset(70);
        make.left.equalTo(_textfield1);
    }];
    UIImageView *imageview2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"密码"]];
    _textfield2.leftView=imageview2;
    _textfield2.leftViewMode=UITextFieldViewModeAlways;
    _textfield2.contentVerticalAlignment=UIControlContentVerticalAlignmentCenter;
    [imageview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 30));
    }];
    UIView *view1=[[UIView alloc]init];
    view1.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(_textfield1);
        make.left.equalTo(_textfield1);
        make.top.equalTo(_textfield1).offset(37);
    }];
    UIView *view2=[[UIView alloc]init];
    view2.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view2];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(1.5);
        make.right.equalTo(_textfield2);
        make.left.equalTo(_textfield1);
        make.top.equalTo(_textfield2).offset(37);
    }];
    
    _login=[[UIButton alloc]init];
    _login.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [_login setTitle:@"进入" forState:UIControlStateNormal];
    [_login setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_login.layer setMasksToBounds:YES];
    [_login.layer setCornerRadius:15];
    _login.titleLabel.font=[UIFont systemFontOfSize:16];
    [_login addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_login];
    [_login mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(45);
        make.right.equalTo(_textfield2);
        make.left.equalTo(_textfield1);
        make.top.equalTo(_textfield2).offset(82);
    }];
    _lable1=[[UILabel alloc]init];
    _lable1.text=@"———其他登陆方式———";
    _lable1.adjustsFontSizeToFitWidth = YES;
    _lable1.numberOfLines = 0;
    _lable1.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    _lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:_lable1];
    [_lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(_login).offset(70);
        make.centerX.equalTo(self.view);
    }];
 
    _btn2=[[UIButton alloc]init];
    [_btn2 setImage:[UIImage imageNamed:@"weibo"] forState:UIControlStateNormal];
    _btn2.backgroundColor=[UIColor whiteColor];
    //   [_btn1 addTarget:self action:@selector() forControlEvents:UIControlEventTouchDown];QQ登录
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.centerX.equalTo(self.view);
        make.top.equalTo(_lable1).offset(40);
    }];
    _btn1=[[UIButton alloc]init];
    [_btn1 setImage:[UIImage imageNamed:@"qq"] forState:UIControlStateNormal];
    _btn1.backgroundColor=[UIColor whiteColor];
    //   [_btn1 addTarget:self action:@selector() forControlEvents:UIControlEventTouchDown];QQ登录
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.equalTo(_btn2).offset(-100);
        make.top.equalTo(_lable1).offset(40);
    }];
    _btn3=[[UIButton alloc]init];
    [_btn3 setImage:[UIImage imageNamed:@"weixin"] forState:UIControlStateNormal];
    _btn3.backgroundColor=[UIColor whiteColor];
    //   [_btn1 addTarget:self action:@selector() forControlEvents:UIControlEventTouchDown];QQ登录
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.equalTo(_btn2).offset(100);
        make.top.equalTo(_lable1).offset(40);
    }];
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"注册即表示同意《用户体验协议》";
    lable2.textColor=[UIColor colorWithRed:127/255.0 green:127/255.0 blue:127/255.0 alpha:1];
    lable2.textAlignment=NSTextAlignmentCenter;
    lable2.backgroundColor=[UIColor whiteColor];
    lable2.font=[UIFont systemFontOfSize:14];
    [self.view addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(250, 20));
        make.top.equalTo(_btn2).offset(70);
        make.centerX.equalTo(self.view);
    }];
    _textfield1.delegate=self;
    _textfield2.delegate=self;
    
    
    
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_textfield1 resignFirstResponder];
    [_textfield2 resignFirstResponder];
    
}

-(void)go
{
    NSDictionary *dic1=@{
                         @"mail":self.textfield1.text,
                         @"password":self.textfield2.text,
                         };
    AFHTTPSessionManager *manager1=[AFHTTPSessionManager manager];
    [manager1 POST:@"http://114.116.0.163/user/login" parameters:dic1 progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *nsdic=responseObject;
        NSLog(@"%@",nsdic);
        NSString *str1=[NSString stringWithFormat:@"%@",[nsdic objectForKey:@"ConsultType"]];//要进行这样的转化 不然会报错！！！！
        if([str1 isEqualToString:@"200"])
        {
            NSString *str2=[nsdic objectForKey:@"name"];
            NSString *str3=[nsdic objectForKey:@"id"];
            [User sharedInstance].userid=str3;
            [User sharedInstance].name=str2;//单例传值
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"登陆成功" preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alert animated:true completion:nil];
        }
        else
        {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"登陆失败" preferredStyle:UIAlertControllerStyleAlert];
            [alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
            [self presentViewController:alert animated:true completion:nil];
        }
       
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSError *err=error;
        NSLog(@"%@",err);
        NSLog(@"失败");
    }];
    
}

-(void)zhuce
{
   
    
}
-(void)fanhui
{
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)passValue:(NSString *)str
{
    if (str) {
        self.textfield1.text=str;
    }
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
