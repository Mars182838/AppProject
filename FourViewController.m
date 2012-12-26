//
//  FourViewController.m
//  AppProject
//
//  Created by Mars on 12-12-25.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import "FourViewController.h"
#import "PersonViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _messageArray = [[NSMutableArray alloc] initWithObjects:@"我的收藏",@"我的日程",@"我的名片",@"关于",@"版本升级",@"反馈建议", nil];
    }
    return self;
}

#pragma mark - lifeCycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"更多";
    self.messageTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.messageTableView.delegate = self;
    self.messageTableView.dataSource = self;
    [self.view addSubview:self.messageTableView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDelegate and UITableViewDatesources Methods

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _messageArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indentifer = @"cellIndentifer";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indentifer];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:indentifer] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    cell.textLabel.text = [_messageArray objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    PersonViewController *person = [[PersonViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:person animated:YES];
}

@end
