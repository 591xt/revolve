//
//  YZTabBarViewController.h
//  revolve
//
//  Created by yz on 2020/7/29.
//  Copyright © 2020 51xt. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YZTabBarViewController : UITabBarController


-(instancetype)initwithClassNameArray:(NSArray*)classNameArray andImageNameArray:(NSArray*)imageNameArray andSelectedImageNameArray:(NSArray*)selectedImageNameArray andTitleNameArray:(NSArray*)titleNameAray andTitleFont:(UIFont*)titleFont andTitleColor:(UIColor*)titleColor andSelectedTitleColor:(UIColor*)selectedTitleColor;


@end



NS_ASSUME_NONNULL_END
