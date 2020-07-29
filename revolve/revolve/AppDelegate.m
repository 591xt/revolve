//
//  AppDelegate.h
//  revolve
//
//  Created by 591xt on 2020/6/28.
//  Copyright © 2020 591xt. All rights reserved.
//


#import "AppDelegate.h"
#import "ViewController.h"
#import "YZTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[YZTabBarViewController alloc] initwithClassNameArray:@[@"PortraitViewController",@"LandscapeLeftViewController",@"LandscapeRightViewController",] andImageNameArray:@[@"Landscape",@"Landscape",@"Landscape",] andSelectedImageNameArray:@[@"Landscape_select",@"Landscape_select",@"Landscape_select",] andTitleNameArray:@[@"正竖屏",@"左横屏",@"右横屏",] andTitleFont:[UIFont systemFontOfSize:15 weight:(UIFontWeightMedium)] andTitleColor:[UIColor orangeColor] andSelectedTitleColor:[UIColor redColor]];
        
    [self.window makeKeyWindow];
    [self.window makeKeyAndVisible];
    return YES;

}

-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskAll;
}


@end
