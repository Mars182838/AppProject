//
//  PersonViewController.h
//  AppProject
//
//  Created by Mars on 12-12-25.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) UITableView *infoTableView;
@property (nonatomic, retain) NSArray *infoArray;

@end
