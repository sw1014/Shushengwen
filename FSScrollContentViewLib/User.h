//
//  User.h
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import <Foundation/Foundation.h>
//用到了 id name

@interface User : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *password;
@property(nonatomic,strong)NSString *mail;
@property(nonatomic,strong)NSString *userid;
+(instancetype)sharedInstance;
@end
