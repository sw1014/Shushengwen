//
//  SearchViewController.h
//  shushengwen
//
//  Created by 201wangyan on 2019/7/12.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol passValueDelegate<NSObject>
-(void)passValue:(NSString *)str;
@end
@interface SearchViewController : UIViewController
@property(weak)id<passValueDelegate>delegate;
@property(nonatomic)NSString *text;
@property(nonatomic)UITextField *search;
@end
