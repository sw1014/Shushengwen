//
//  Child3ViewController.m
//  书生文
//
//  Created by 201wangyan on 2019/7/9.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "Child3ViewController.h"
#import "ZhanLanTableViewCell.h"
#import "ZhanLan.h"
#import "AFNetworking.h"
#import "Masonry.h"
#import "ScheduleViewController.h"
#import "User.h"
#import "Detail1ViewController.h"
@interface Child3ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic)UIButton *btn2;
@end

@implementation Child3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.datasource=[[NSMutableArray alloc]init];
    [self initdata];
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 64)];
    view1.backgroundColor=[UIColor colorWithRed:172/255.0 green:194/255.0 blue:183/255.0 alpha:1];
    [self.view addSubview:view1];
    UILabel *lable1=[[UILabel alloc]init];
    lable1.text=@"国艺／专展";
    lable1.font=[UIFont systemFontOfSize:20];
    lable1.textColor=[UIColor colorWithRed:79/255.0 green:90/255.0 blue:82/255.0 alpha:1];
    lable1.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:lable1];
    [lable1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(view1).offset(5);
        make.size.mas_equalTo(CGSizeMake(200, 30));
    }];
    UIButton *btn1=[[UIButton alloc]init];//设置返回上一个界面的按钮
    [btn1 setImage:[UIImage imageNamed:@"行程"] forState:UIControlStateNormal];
    btn1.backgroundColor=[UIColor clearColor];
    [btn1 addTarget:self action:@selector(xingchen) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(20, 20));
        make.right.equalTo(self.view).offset(-10);
        make.centerY.equalTo(lable1);
    }];
    _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 64,[UIScreen mainScreen].bounds.size.width,[UIScreen mainScreen].bounds.size.height-64)];
                _tableview.dataSource=self;
    _tableview.delegate=self;
    [self.view addSubview:_tableview];
    _btn2=[[UIButton alloc]init];
    [_btn2 setImage:[UIImage imageNamed:@"首页的鸟"] forState:UIControlStateNormal];
    _btn2.backgroundColor=[UIColor colorWithRed:148/255.0 green:178/255.0 blue:169/255.0 alpha:0];
    [_btn2.layer setMasksToBounds:YES];
    [_btn2.layer setCornerRadius:35];
    [_btn2 addTarget:self action:@selector(detail1) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn2];
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(70, 70));
        make.bottom.equalTo(self.view).offset(-30);
        make.trailing.equalTo(self.view).offset(-30);
    }];
}
-(void)detail1
{
    Detail1ViewController *v1=[[Detail1ViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)xingchen
{
    ScheduleViewController *v1=[[ScheduleViewController alloc]init];
    v1.modalTransitionStyle=UIModalTransitionStyleCrossDissolve;
    [self presentViewController:v1 animated:YES completion:nil];
}
-(void)initdata//通过网络请求初始化数据然后赋值给数据源
{
    //判断一下  userid是否有登陆
    if ([User sharedInstance].userid!=NULL) {
        AFHTTPSessionManager *manager1=[AFHTTPSessionManager manager];
        __weak __typeof(self)weakSelf = self;
        [manager1 GET:@"http://114.116.0.163/get_exhibition/" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSArray *nsarr=responseObject;
            NSLog(@"%@",nsarr);
            for(int i=0;i<nsarr.count;i++)
            {
                NSDictionary *dic=nsarr[i];
                NSString *str1=[dic objectForKey:@"name"];//获取汉字
                NSString *str2=[dic objectForKey:@"date"];
                NSString *str3=[dic objectForKey:@"pic"];
                NSString *str4=[dic objectForKey:@"position"];
                NSInteger i1=[dic objectForKey:@"id"];
                NSInteger i2=[dic objectForKey:@"in"];
                ZhanLan *item=[[ZhanLan alloc]initWithName:str1 Pic:str3 Date:str2 ID:i1 Position:str4 in:i2];
                [weakSelf.datasource addObject:item];
            }
            [weakSelf.tableview reloadData];
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSError *err=error;
            NSLog(@"%@",err);
            NSLog(@"失败");
        }];
    }
    else
    {
        AFHTTPSessionManager *manager1=[AFHTTPSessionManager manager];
        __weak __typeof(self)weakSelf = self;
        [manager1 GET:@"http://114.116.0.163/get_exhibition/" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSArray *nsarr=responseObject;
            NSLog(@"%@",nsarr);
            for(int i=0;i<nsarr.count;i++)
            {
                NSDictionary *dic=nsarr[i];
                NSString *str1=[dic objectForKey:@"name"];//获取汉字
                NSString *str2=[dic objectForKey:@"date"];
                NSString *str3=[dic objectForKey:@"pic"];
                NSString *str4=[dic objectForKey:@"position"];
                NSInteger i1=[dic objectForKey:@"id"];
                NSInteger i2=[dic objectForKey:@"in"];
                ZhanLan *item=[[ZhanLan alloc]initWithName:str1 Pic:str3 Date:str2 ID:i1 Position:str4 in:i2];
                [weakSelf.datasource addObject:item];
            }
            [weakSelf.tableview reloadData];
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSError *err=error;
            NSLog(@"%@",err);
            NSLog(@"失败");
        }];
    }
  
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_datasource count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 300;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZhanLanTableViewCell *cell=[self.tableview dequeueReusableCellWithIdentifier:@"ZhanLanTableViewCell"];
    ZhanLan *item=[_datasource objectAtIndex:indexPath.row];
    if(!cell){
        cell = [[[NSBundle mainBundle] loadNibNamed:@"ZhanLanTableViewCell" owner:nil options:nil] firstObject];
        NSString *str1=@"http://114.116.0.163/get_pic/";
        NSString *str2=[str1 stringByAppendingString:item.pic];
        NSURL *urll=[NSURL URLWithString:str2];
        NSData *data=[NSData dataWithContentsOfURL:urll];
        cell.imageview1.image=[UIImage imageWithData:data];
        cell.lable1.text=item.name;
        cell.lable2.text=item.date;
    }
  
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableview deselectRowAtIndexPath:indexPath animated:NO];
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
