//
//  HomeViewController.m
//  CSMetro
//
//  Created by 工业设计中意（湖南） on 14-3-25.
//  Copyright (c) 2014年 潇湘晨报新媒体. All rights reserved.
//

#import "HomeViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "../libs/sideBar/TheSidebarController.h"

@interface HomeViewController ()


- (void)showLeftMenu:(id)sender;
- (void)showRightMenu:(id)sender;

@end

@implementation HomeViewController

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
    
    UIBarButtonItem *leftMenuButton = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                       style:UIBarButtonItemStylePlain
                                                                      target:self
                                                                      action:@selector(showLeftMenu:)];
    
    UIBarButtonItem *rightMenuButton = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                                        style:UIBarButtonItemStylePlain
                                                                       target:self
                                                                       action:@selector(showRightMenu:)];
    
    self.navigationItem.leftBarButtonItem = leftMenuButton;
    self.navigationItem.rightBarButtonItem = rightMenuButton;
    
}

- (void)showLeftMenu:(id)sender
{
    if(self.sidebarController.sidebarIsPresenting)
    {
        [self.sidebarController dismissSidebarViewController];
    }
    else
    {
        [self.sidebarController presentLeftSidebarViewController];
    }
}

- (void)showRightMenu:(id)sender
{
    if(self.sidebarController.sidebarIsPresenting)
    {
        [self.sidebarController dismissSidebarViewController];
    }
    else
    {
        [self.sidebarController presentLeftSidebarViewController];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
