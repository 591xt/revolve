//
//  LandscapeLeftViewController.m
//  revolve
//
//  Created by yz on 2020/7/29.
//  Copyright © 2020 51xt. All rights reserved.
//

#import "LandscapeLeftViewController.h"
#import "ViewController.h"

@interface LandscapeLeftViewController ()

@property(nonatomic,strong)UIButton* btn;

@end

@implementation LandscapeLeftViewController

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
    
    [self presentViewController:[ViewController new] animated:YES completion:nil];
}


@end
