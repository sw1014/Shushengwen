//
//  tableviewdata.h
//  nsw
//
//  Created by 201wangyan on 2019/6/8.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface tableviewdata : NSObject
@property (nonatomic, strong) NSMutableArray  *dataArray;
@property (nonatomic, strong) NSMutableArray  *nameList;
-(void)addDataArray:(NSArray *)array arrayFlag:(NSString *)flag;
- (NSInteger)numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfSections;
- (NSString *)flagInSection:(NSIndexPath *)indexPath;
- (id)dataInIndexPath:(NSIndexPath *)indexPath;
@end
