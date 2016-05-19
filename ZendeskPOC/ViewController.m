//
//  ViewController.m
//  ZendeskPOC
//
//  Created by Stefan Walkner on 19.05.16.
//  Copyright © 2016 arkulpa GmbH. All rights reserved.
//

#import "ViewController.h"
#import "ZendeskPOC-Swift.h"

@interface ViewController () <UIPopoverControllerDelegate>
@property (nonatomic, strong) UIPopoverController *popoverController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];

    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Click Me" style:UIBarButtonItemStylePlain target:self action:@selector(showPopover)];
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
}

- (void)showPopover {
    [self.popoverController dismissPopoverAnimated:NO];
    self.popoverController = nil;
    
    PopoverFirstViewController *vc = [[PopoverFirstViewController alloc] initWithNibName:nil bundle:nil];
    UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.popoverController = [[UIPopoverController alloc] initWithContentViewController:nc];
    self.popoverController.delegate = self;
    
    [self.popoverController presentPopoverFromBarButtonItem:self.navigationItem.rightBarButtonItem
                                   permittedArrowDirections:UIPopoverArrowDirectionAny
                                                   animated:NO];
}

@end
