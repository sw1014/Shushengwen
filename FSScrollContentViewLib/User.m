//
//  User.m
//  shushengwen
//
//  Created by 201wangyan on 2019/8/21.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "User.h"

@implementation User
+(instancetype)sharedInstance
{
    static User *sharedUser=nil;
    if(sharedUser==nil)
    {
        sharedUser=[[User alloc]init];
    }
    return sharedUser;
}
@end
