//
//  ViewController.m
//  360
//
//  Created by Vishnu on 24/09/18.
//  Copyright © 2018 Bhavana. All rights reserved.
//

#import "ViewController.h"
#import "HTY360PlayerVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)click:(id)sender {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"m4v"];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
    HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:url];
    
    if (![[self presentedViewController] isBeingDismissed]) {
        [self presentViewController:videoController animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
