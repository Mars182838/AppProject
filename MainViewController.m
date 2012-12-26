//
//  MainViewController.m
//  AppProject
//
//  Created by Mars on 12-12-24.
//  Copyright (c) 2012年 Mars. All rights reserved.
//

#import "MainViewController.h"
#import "DetailViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize carousel = _carousel;
@synthesize detailController = _detailController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    
        
    }
    return self;
}

-(void)dealloc
{
    self.carousel = nil;
    [_carousel release];
    [super dealloc];
}

#pragma mark - 
#pragma mark - Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"主页";
    
    wrap = YES;
    
    _carousel = [[iCarousel alloc] init];
    _carousel.frame = CGRectMake(0, -100, self.view.frame.size.width, self.view.frame.size.height);
    _carousel.delegate = self;
    _carousel.dataSource = self;
    _carousel.type = iCarouselTypeCoverFlow;
    
    [self.view addSubview:_carousel];
    
    
    
    
//    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    webView.delegate = self;
//    webView.scalesPageToFit = YES;
//    NSURL *url = [[NSURL alloc] initWithString:@"http://www.chiconline.com.cn:8080/CHIC/web/introduction/index.jsp"];
//    [webView loadRequest:[NSURLRequest requestWithURL:url]];
//    
//    [self.view addSubview:webView];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

#pragma mark - 
#pragma mark - iCarousel.h delegate and dateSource

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return 6;
}

-(UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    UIView *view = [[[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"huan%d.jpg",index+1]]] autorelease];
    
    view.frame = CGRectMake(20, 20, 260, 200);
    return view;
}

-(NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel
{
    return 6;
}

- (CGFloat)carouselItemWidth:(iCarousel *)carousel
{
    return 200;
}

//是否支持循环查看图片
-(BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    return wrap;
}

-(void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index
{
    _detailController = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:_detailController animated:YES];
    _detailController.index = [[NSString alloc] initWithFormat:@"%d",index];
    NSLog(@"------%@",_detailController.index);
}

@end
