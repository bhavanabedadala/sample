//
//  panoimageViewController.m
//  360
//
//  Created by Vishnu on 24/09/18.
//  Copyright © 2018 Bhavana. All rights reserved.
//

#import "panoimageViewController.h"
#import "PanoramaView.h"
@interface panoimageViewController (){
    PanoramaView *panoramaView;
}

@end

@implementation panoimageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    panoramaView = [[PanoramaView alloc] init];
    [panoramaView setImageWithName:@"park_2048.jpg"];
    [panoramaView setOrientToDevice:YES];
    [panoramaView setTouchToPan:NO];
    [panoramaView setPinchToZoom:YES];
    [panoramaView setShowTouches:NO];
    [panoramaView setVRMode:NO];
    [self setView:panoramaView];
}

-(void) glkView:(GLKView *)view drawInRect:(CGRect)rect{
    [panoramaView draw];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
