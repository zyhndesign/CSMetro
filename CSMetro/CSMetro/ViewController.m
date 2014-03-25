//
//  ViewController.m
//  CSMetro
//
//  Created by 工业设计中意（湖南） on 14-3-25.
//  Copyright (c) 2014年 潇湘晨报新媒体. All rights reserved.
//

#import "ViewController.h"
#import "classes/HomeViewController.h"
#import "classes/SettingViewController.h"
#import "classes/CollectViewController.h"
#import "libs/sideBar/TheSidebarController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self performSelector:@selector(toHomePage) withObject:nil afterDelay:3.0f];
}

-(void) toHomePage
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    HomeViewController *vc2 = [storyboard instantiateViewControllerWithIdentifier:@"HomePage" ];
    [self presentViewController:vc2 animated:YES completion:NULL];
    
    SettingViewController *leftSidebarViewController = [[SettingViewController alloc] init];
    
    CollectViewController *rightSidebarViewController = [[CollectViewController alloc] init];
    
    UINavigationController *contentNavigationController = [[UINavigationController alloc] initWithRootViewController:vc2];
    contentNavigationController.view.layer.shadowColor = [UIColor blackColor].CGColor;
    contentNavigationController.view.layer.shadowOffset = (CGSize){0.0, 0.0};
    contentNavigationController.view.layer.shadowOpacity = 0.8;
    contentNavigationController.view.layer.shadowRadius = 10.0;
    
    TheSidebarController *sidebarController = [[TheSidebarController alloc] initWithContentViewController:contentNavigationController
                                                                                leftSidebarViewController:leftSidebarViewController
                                                                               rightSidebarViewController:rightSidebarViewController];
    sidebarController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.jpg"]];
    
    
    //[self performSegueWithIdentifier:@"HomePage" sender:self];
    //HomeViewController *homeViewController = [HomeViewController new];
    //[self.navigationController pushViewController:homeViewController animated:YES];
    //UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:self ];
    //[nav pushViewController:homeViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
