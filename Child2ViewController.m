//
//  Child2ViewController.m
//  书生文
//
//  Created by 201wangyan on 2019/7/9.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "Child2ViewController.h"
#import "Masonry.h"
#import "SearchViewController.h"
#import "Detail1ViewController.h"
#import "User.h"

@interface Child2ViewController ()<passValueDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UITextFieldDelegate>
@property(nonatomic)UIButton *btn1;
@property(nonatomic)UIButton *btn2;
@property(nonatomic)UIButton *btn3;
@property(nonatomic)UIButton *btn4;
@property(nonatomic)UITextField *search;
@end

@implementation Child2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *back=[UIImage imageNamed:@"主界面"];
    self.view.layer.contents=(id)back.CGImage;//设置背景图片
    self.view.backgroundColor=[UIColor whiteColor];
    //设置搜索框
    _search=[[UITextField alloc]init];
    _search.delegate=self;
    _search.font=[UIFont systemFontOfSize:15];
    _search.placeholder=@" 请输入汉字伊始搜索......";
   _search.backgroundColor=[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.5];
    _search.layer.borderWidth=0;
    _search.layer.masksToBounds=YES;
    _search.layer.cornerRadius=5;
    _search.tintColor=[UIColor colorWithRed:115/255.0 green:128/255.0 blue:121/255.0 alpha:0.7];
    _search.keyboardType=UIKeyboardTypeDefault;
    _search.returnKeyType=UIReturnKeySearch;
    [self.view addSubview:_search];
    [_search mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(350, 40));
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(30);
    }];
    //添加搜索框的代理事件
    
    UIButton *searchbtn=[[UIButton alloc]init];
    [searchbtn setImage:[UIImage imageNamed:@"搜索"] forState:UIControlStateNormal];
    [searchbtn.imageView setContentMode:UIViewContentModeScaleAspectFill];
    [_search addSubview:searchbtn];
    [searchbtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(30, 30));
        make.centerY.equalTo(_search);
        make.trailing.equalTo(_search).offset(-10);
    }];
   
  

    
    
    _btn2=[[UIButton alloc]init];
    [_btn2 setImage:[UIImage imageNamed:@"扫码"] forState:UIControlStateNormal];
    _btn2.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:1];
    [_btn2.layer setMasksToBounds:YES];
    [_btn2.layer setCornerRadius:25];
    [_btn2 addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.view);
    }];//使用massory时，要先初始化 btn2 才能初始化btn1，3！！！
   
    
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"鸥去昔游非。";
    lable1.textColor=[UIColor whiteColor];
    lable1.textAlignment=NSTextAlignmentCenter;
    lable1.adjustsFontSizeToFitWidth=YES;

    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.height.mas_equalTo(17);
        make.top.equalTo(self.view).offset(480);
    }];
    UILabel *lable2=[[UILabel alloc]init];
    lable2.text=@"遥怜花可可，梦依依。";
    lable2.textColor=[UIColor whiteColor];
    lable2.textAlignment=NSTextAlignmentCenter;
    lable2.adjustsFontSizeToFitWidth=YES;
    [self.view addSubview:lable2];
    [lable2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(17);
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(510);
    }];
    UILabel *lable3=[[UILabel alloc]init];
    lable3.text=@"九疑云杏断魂蹄，相思血，都沁绿筠枝";
    lable3.textColor=[UIColor whiteColor];
    lable3.textAlignment=NSTextAlignmentCenter;
    lable3.adjustsFontSizeToFitWidth=YES;
    [self.view addSubview:lable3];
    [lable3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
          make.height.mas_equalTo(17);
        make.top.equalTo(self.view).offset(540);
    }];
    _btn4=[[UIButton alloc]init];
    [_btn4 setImage:[UIImage imageNamed:@"首页的鸟"] forState:UIControlStateNormal];
    _btn4.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:0];
    [_btn4.layer setMasksToBounds:YES];
    [_btn4.layer setCornerRadius:35];
    [_btn4 addTarget:self action:@selector(detail1) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn4];
    [_btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 70));
        make.top.equalTo(lable3).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
    }];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_search resignFirstResponder];
    
}
- (void)textFieldDidEndEditing:(UITextField *)textField//取消第一响应者
{
    _search= textField;
    [textField resignFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==_search)
    {
        SearchViewController *v1=[[SearchViewController alloc]init];
        v1.text=self.search.text;//属性传值
        v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
        v1.delegate=self;
        [self presentViewController:v1 animated:YES completion:nil];
    }
    return YES;
}

-(void)passValue:(NSString *)str
{
    if(str)
    {
        self.search.text=str;
    }
}
-(void)detail1
{
    Detail1ViewController *v1=[[Detail1ViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)go
{
    _btn3=[[UIButton alloc]init];
    [_btn3 setImage:[UIImage imageNamed:@"扫码2"] forState:UIControlStateNormal];
    _btn3.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:0.5];
    [_btn3.layer setMasksToBounds:YES];
    [_btn3.layer setCornerRadius:25];
    [_btn3 addTarget:self action:@selector(scan2) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn3];
    [_btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.left.equalTo(_btn2).offset(80);
        make.centerY.equalTo(self.view);
    }];
    _btn1=[[UIButton alloc]init];
    [_btn1 setImage:[UIImage imageNamed:@"扫码1"] forState:UIControlStateNormal];
    _btn1.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:0.5];
    [_btn1.layer setMasksToBounds:YES];
    [_btn1.layer setCornerRadius:25];
    [_btn1 addTarget:self action:@selector(scan1) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.right.equalTo(_btn2).offset(-80);
        make.centerY.equalTo(self.view);
    }];
    
}
-(void)scan1
{
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
    }];
    
    UIAlertAction *camera = [UIAlertAction actionWithTitle:@"打开相机" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
            imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        }
        [self presentViewController:imagePicker animated:YES completion:nil];
        
    }];
    
    UIAlertAction *picture = [UIAlertAction actionWithTitle:@"打开相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        UIImagePickerController *pickerImage = [[UIImagePickerController alloc] init];
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
            pickerImage.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            pickerImage.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:pickerImage.sourceType];
            
        }
        pickerImage.delegate = self;
        pickerImage.allowsEditing = NO;
        
        [self presentViewController:pickerImage animated:YES completion:nil];
    }];
    [alertVc addAction:cancle];
    [alertVc addAction:camera];
    [alertVc addAction:picture];
    [self presentViewController:alertVc animated:YES completion:nil];
}
-(void)scan2//进行扫描
{
    UIAlertController *alertVc = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action) {
        
    }];
    
    UIAlertAction *camera = [UIAlertAction actionWithTitle:@"打开相机" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
        imagePicker.delegate = self;
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
            imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        }
        [self presentViewController:imagePicker animated:YES completion:nil];
        
    }];
    
    UIAlertAction *picture = [UIAlertAction actionWithTitle:@"打开相册" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        UIImagePickerController *pickerImage = [[UIImagePickerController alloc] init];
        if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
            pickerImage.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            pickerImage.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:pickerImage.sourceType];
            
        }
        pickerImage.delegate = self;
        pickerImage.allowsEditing = NO;
        
        [self presentViewController:pickerImage animated:YES completion:nil];
    }];
    [alertVc addAction:cancle];
    [alertVc addAction:camera];
    [alertVc addAction:picture];
    [self presentViewController:alertVc animated:YES completion:nil];
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [picker dismissViewControllerAnimated:YES completion:^{}];
    NSLog(@"放弃换照片");
}
- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    
    
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
