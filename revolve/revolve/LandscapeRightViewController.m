//
//  LandscapeRightViewController.m
//  revolve
//
//  Created by yz on 2020/7/29.
//  Copyright © 2020 51xt. All rights reserved.
//

#import "LandscapeRightViewController.h"

@interface LandscapeRightViewController ()

@property(nonatomic)NSInteger rotation;
@property(nonatomic,strong)UIButton* btn;

@end

@implementation LandscapeRightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.btn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.btn.backgroundColor=[UIColor orangeColor];
    [self.btn addTarget:self action:@selector(click:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.btn setTitle:@"旋转" forState:(UIControlStateNormal)];
    
    
    [self.btn setTitleColor:[UIColor whiteColor] forState:(UIControlStateNormal)];
    [self.view addSubview:self.btn];
    self.btn.center=self.view.center;
}


-(void)click:(UIButton *)sender
{
    
    self.rotation++;

    if (self.rotation==0)
    {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIInterfaceOrientationPortrait] forKey:@"orientation"];
    }
    else if (self.rotation==1)
    {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger: UIDeviceOrientationLandscapeRight] forKey:@"orientation"];
    }
    else if (self.rotation==2)
    {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortraitUpsideDown] forKey:@"orientation"];
    }
    else if (self.rotation==3)
    {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft] forKey:@"orientation"];
        self.rotation=-1;
    }
    self.btn.center=self.view.center;

}


@end
