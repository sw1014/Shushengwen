//
//  tableviewdata.m
//  nsw
//
//  Created by 201wangyan on 2019/6/8.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import "tableviewdata.h"
#import <UIKit/UIKit.h>
@implementation tableviewdata
- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _dataArray = [NSMutableArray new];
        _nameList  = [NSMutableArray new];
    }
    return self;
}

-(void)addDataArray:(NSArray *)array arrayFlag:(NSString *)flag
{
    [_dataArray addObject:array];
    [_nameList  addObject:flag];
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray[section] count];
}

- (NSInteger)numberOfSections
{
    return [_dataArray count];
}

- (NSString *)flagInSection:(NSIndexPath *)indexPath
{
    return _nameList[indexPath.section];
    
}

- (id)dataInIndexPath:(NSIndexPath *)indexPath
{
    return _dataArray[indexPath.section][indexPath.row];
}

@end

