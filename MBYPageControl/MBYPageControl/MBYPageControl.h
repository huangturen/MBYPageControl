//
//  MBYPageControl.h
//  MBYPageControl
//
//  Created by mabaoyan on 2017/2/23.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBYPageControl : UIPageControl

@property (nonatomic, strong)UIImage    *normalImage;
@property (nonatomic, strong)UIImage    *highlightImage;
@property (nonatomic, assign)BOOL       needRoundRot;

@end
