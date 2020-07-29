//
//  YZTabBarViewController.m
//  revolve
//
//  Created by yz on 2020/7/29.
//  Copyright © 2020 51xt. All rights reserved.
//

#import "YZTabBarViewController.h"
#import "ViewController.h"


@interface YZTabBarViewController ()

@property(nonatomic,strong)UIColor* titleColor;
@property(nonatomic,strong)UIColor* selectedTitleColor;
@property(nonatomic,strong)UIFont* titleFont;

@end

@implementation YZTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(instancetype)initwithClassNameArray:(NSArray*)classNameArray andImageNameArray:(NSArray*)imageNameArray andSelectedImageNameArray:(NSArray*)selectedImageNameArray andTitleNameArray:(NSArray*)titleNameAray andTitleFont:(UIFont*)titleFont andTitleColor:(UIColor*)titleColor andSelectedTitleColor:(UIColor*)selectedTitleColor
{
    if (self==[super init])
    {
        self.titleColor=titleColor;
        self.titleFont=titleFont;
        self.selectedTitleColor=selectedTitleColor;
        for (int i=0; i<classNameArray.count; i++)
        {
            [self addchildVC:[[NSClassFromString(classNameArray[i]) alloc] init] Andimage:[UIImage imageNamed:imageNameArray[i]] AndselectedImage:[UIImage imageNamed:selectedImageNameArray[i]] Andtitle:titleNameAray[i]];
        }
    }
    return self;
}


-(void)addchildVC:(UIViewController *)childVC Andimage:(UIImage *)image AndselectedImage:(UIImage *)selectedImage Andtitle:(NSString *)title
{
    // 设置标题
    childVC.title = title;
    // 设置图标
    childVC.tabBarItem.image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置选中图标
    childVC.tabBarItem.selectedImage= [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    // 设置字体
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    //字体大小
    textAttrs[NSFontAttributeName] = self.titleFont;
    //默认字体颜色
    textAttrs[NSForegroundColorAttributeName] = self.titleColor;
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    // 设置选中时的字体颜色
    textAttrs[NSForegroundColorAttributeName] = self.selectedTitleColor;
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateSelected];
    // 添加为tabbar控制器的子控制器
    UINavigationController *navigationVC = [[UINavigationController alloc] initWithRootViewController:childVC];
    [self addChildViewController:navigationVC];
    
}




@end
