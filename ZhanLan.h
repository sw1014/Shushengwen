//
//  ZhanLan.h
//  shushengwen
//
//  Created by 201wangyan on 2019/7/20.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZhanLan : NSObject
@property(nonatomic)NSString *name;
@property(nonatomic)NSString *pic;
@property(nonatomic)NSString *date;
@property(nonatomic)NSInteger id1;
@property(nonatomic)NSString *position;
@property(nonatomic)NSInteger in1;
-(id)initWithName:(NSString *)name Pic:(NSString *)pic Date:(NSString *)date ID:(NSInteger)id1 Position:(NSString *)position in:(NSInteger)in1;
@end
