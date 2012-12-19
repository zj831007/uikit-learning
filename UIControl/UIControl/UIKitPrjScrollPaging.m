//
//  UIKitPrjScrollPaging.m
//  UIControl
//
//  Created by Justin on 12-12-19.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "UIKitPrjScrollPaging.h"

@interface UIKitPrjScrollPaging ()

@end

@implementation UIKitPrjScrollPaging

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationItem.title = @"scroll paging";
    self.view.backgroundColor = [UIColor blackColor];
    
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 345)];
    pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 344, 320, 36)];
    
    images = [NSMutableArray arrayWithObjects:@"a.jpg", nil];
    
    [self.view addSubview:scrollView];
    [self.view addSubview:pageControl];
    
    [self setupPage];
    [self viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) setupPage
{
    scrollView.delegate = self;
    [scrollView setBackgroundColor:[UIColor blackColor]];
    [scrollView setCanCancelContentTouches:NO];
    
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleWhite;
    scrollView.clipsToBounds = YES;
    scrollView.scrollEnabled = YES;
    scrollView.pagingEnabled = YES;
    scrollView.directionalLockEnabled  = NO;
    
    scrollView.alwaysBounceHorizontal = NO;
    scrollView.alwaysBounceVertical = NO;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    
    NSUInteger nimages = 0;
    CGFloat cx = 0;
    for (NSString *imagepath in images) {
        UIImageView *imageView = [[[UIImageView alloc] initWithFrame:CGRectZero] autorelease];
        [imageView setBackgroundColor:[UIColor colorWithRed:0.6 green:0.6 blue:0.6 alpha:1.0]];
        
        UIImage *img = [UIImage imageNamed:imagepath];
        [imageView setImage:img];
        
        CGRect rect = scrollView.frame;
        rect.size.height = scrollView.frame.size.height;
        rect.size.width = scrollView.frame.size.width;
        rect.origin.x = cx;
        rect.origin.y = 0;
        imageView.frame = rect;
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        [scrollView addSubview:imageView];
        
        cx += scrollView.frame.size.width;
        nimages ++;
        
    }
    
    [pageControl addTarget:self action:@selector(changePage:) forControlEvents:UIControlEventValueChanged];
    pageControl.numberOfPages = nimages;
    pageControl.currentPage = 0;
    pageControl.tag = 0;
    [scrollView setContentSize:CGSizeMake(cx, scrollView.bounds.size.width)];
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *) _scrollView
{
    if (pageControlIsChangingPage) {
        return;
    }
    
    CGFloat pageWidth = _scrollView.frame.size.width;
    int page = floor((_scrollView.contentOffset.x - pageWidth/2)/pageWidth)+1;
    pageControl.currentPage = page;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *) _scrollView
{
    pageControlIsChangingPage = NO;
}

- (void)changePage:(id)sender
{
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width * pageControl.currentPage;
    frame.origin.x = 0;
    [scrollView scrollRectToVisible:frame animated:YES];
    pageControlIsChangingPage = YES;
}


@end
