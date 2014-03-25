//
//  SettingViewController.m
//  CSMetro
//
//  Created by 工业设计中意（湖南） on 14-3-25.
//  Copyright (c) 2014年 潇湘晨报新媒体. All rights reserved.
//

#import "SettingViewController.h"
#import "../libs/sideBar/TheSidebarController.h"

@interface SettingViewController ()
- (void)buttonClicked:(id)sender;
@end

@implementation SettingViewController

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
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = (CGRect){50, 100, 200, 50};
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClicked:(id)sender
{
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"content2.jpg"]];
    self.sidebarController.contentViewController = viewController;
    [self.sidebarController dismissSidebarViewController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
