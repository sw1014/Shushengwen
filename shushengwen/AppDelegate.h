//
//  AppDelegate.h
//  shushengwen
//
//  Created by 201wangyan on 2019/7/11.
//  Copyright © 2019年 shuwen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

