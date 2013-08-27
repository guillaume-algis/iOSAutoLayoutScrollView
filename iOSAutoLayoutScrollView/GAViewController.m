//
//  GAViewController.m
//  iOSAutoLayoutScrollView
//
//  Created by Guillaume Algis on 11/03/13.
//  Copyright (c) 2013 Guillaume Algis. All rights reserved.
//

#import "GAViewController.h"

@interface GAViewController ()

@property (nonatomic, weak) IBOutlet UIScrollView *scrollView;

@end

@implementation GAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGPoint originalScrollViewContentOffset = self.scrollView.contentOffset;
    self.scrollView.contentOffset = CGPointZero;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        self.scrollView.contentOffset = originalScrollViewContentOffset;
    });
}

@end
