//
//  ViewController.m
//  PopOverControllerExample
//
//  Created by LeeJunHui on 15/4/11.
//  Copyright (c) 2015年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UISwitch *switchControl;
@property (strong, nonatomic) UIPopoverController *pop;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UIPopoverController *pop = [[UIPopoverController alloc] initWithContentViewController:[[TableViewController alloc] init]];
    [pop presentPopoverFromBarButtonItem:self.navigationItem.leftBarButtonItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    self.pop = pop;
}


- (IBAction)buttonClick:(UIButton *)sender
{
    UIPopoverController *pop = [[UIPopoverController alloc] initWithContentViewController:[[TableViewController alloc] init]];
    pop.passthroughViews = @[self.switchControl
                             ];
    [pop presentPopoverFromRect:sender.bounds inView:sender permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    self.pop = pop;
}

@end
