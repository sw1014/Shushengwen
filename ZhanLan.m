//
//  ZhanLan.m
//  shushengwen
//
//  Created by 201wangyan on 2019/7/20.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "ZhanLan.h"

@implementation ZhanLan
-(id)initWithName:(NSString *)name Pic:(NSString *)pic Date:(NSString *)date ID:(int)id1 Position:(NSString *)position in:(int)in1
{
    self=[super init];
    if(self)
    {
        self.name=name;
        self.pic=pic;
        self.date=date;
        self.id1=id1;
        self.position=position;
        self.in1=in1;
    }
    return self;
}
@end
