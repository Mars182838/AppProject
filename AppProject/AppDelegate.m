//
//  AppDelegate.m
//  AppProject
//
//  Created by Mars on 12-12-24.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_mainController   release];
    [_firstController  release];
    [_secondController release];
    [_thirdController  release];
    [_fourController   release];
    [_window           release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    /** 视图类
     * _mainController   首页视图
     * _firstController  看展会视图
     * _secondController 资讯视图
     * _thirdController  收藏视图
     * _fourController   更多视图
     */
    _mainController   = [[MainViewController alloc] init];
    _firstController  = [[FirstViewController alloc] init];
    _secondController = [[SecondViewController alloc] init];
    _thirdController  = [[ThirdViewController alloc] init];
    _fourController   = [[FourViewController alloc] init];
    
    UINavigationController *navMianController = [[UINavigationController alloc] initWithRootViewController:_mainController];
    UINavigationController *navFirstController = [[UINavigationController alloc] initWithRootViewController:_firstController];
    UINavigationController *navSecondController = [[UINavigationController alloc] initWithRootViewController:_secondController];
    UINavigationController *navThirdController = [[UINavigationController alloc] initWithRootViewController:_thirdController];
    UINavigationController *navFourController = [[UINavigationController alloc] initWithRootViewController:_fourController];
    
    /** 
     * tabBar 标签视图控制视图切换 
     */
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    NSArray *arrayControllers = [[NSArray alloc] initWithObjects:navMianController,navFirstController,navSecondController,navThirdController,navFourController, nil];
    
    tabBar.viewControllers = arrayControllers;
    self.window.rootViewController = tabBar;
    
    navMianController.tabBarItem.title  =   @"主页";
    navMianController.tabBarItem.image  = [UIImage imageNamed:@"主页.png"];
    
    navFirstController.tabBarItem.title =   @"看展会";
    navFirstController.tabBarItem.image = [UIImage imageNamed:@"看展会.png"];
    
    navSecondController.tabBarItem.title =  @"资讯";
    navSecondController.tabBarItem.image = [UIImage imageNamed:@"资讯.png"];
    
    navThirdController.tabBarItem.title =   @"收藏";
    navThirdController.tabBarItem.image = [UIImage imageNamed:@"收藏.png"];
    
    navFourController.tabBarItem.title  =   @"更多";
    navFourController.tabBarItem.image  = [UIImage imageNamed:@"更多.png"];
    
    [navMianController   release];
    [navFirstController  release];
    [navSecondController release];
    [navThirdController  release];
    [navFourController   release];
    [tabBar release];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
