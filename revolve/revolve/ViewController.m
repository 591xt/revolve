//
//  ViewController.m
//  revolve
//
//  Created by 591xt on 2020/6/28.
//  Copyright © 2020 591xt. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@property(nonatomic)NSInteger rotation;
@property(nonatomic,strong)UIButton* btn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    appDelegate.allowRotation = 1;
    
    self.view.backgroundColor=[UIColor redColor];
    
    self.btn=[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    self.btn.backgroundColor=[UIColor blueColor];
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
