//
//  FourViewController.h
//  AppProject
//
//  Created by Mars on 12-12-25.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FourViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
/** messageTableView 显示更多模块里面的相关模块*/
@property (nonatomic, retain) UITableView *messageTableView;
/** messageArray 存放更多里的相关模块 */
@property (nonatomic, retain) NSMutableArray *messageArray;

@end
