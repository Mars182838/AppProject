//
//  AppDelegate.h
//  AppProject
//
//  Created by Mars on 12-12-24.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;
@class FirstViewController;
@class SecondViewController;
@class ThirdViewController;
@class FourViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/** 视图类
 * mainController   首页视图
 * firstController  看展会视图
 * secondController 资讯视图
 * thirdController  收藏视图
 * fourController   更多视图
 */

@property (nonatomic, strong) MainViewController *mainController;
@property (nonatomic, strong) FirstViewController *firstController;
@property (nonatomic, strong) SecondViewController *secondController;
@property (nonatomic, strong) ThirdViewController *thirdController;
@property (nonatomic, strong) FourViewController *fourController;


@end
