//
//  PortraitViewController.m
//  revolve
//
//  Created by yz on 2020/7/29.
//  Copyright © 2020 51xt. All rights reserved.
//

#import "PortraitViewController.h"
#import "ViewController.h"

@interface PortraitViewController ()

@property(nonatomic,strong)UIButton* btn;

@end

@implementation PortraitViewController

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
    
    [self.navigationController pushViewController:[ViewController new] animated:YES];

}


@end
