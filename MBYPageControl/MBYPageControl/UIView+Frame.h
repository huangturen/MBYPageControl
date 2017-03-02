//
//  UIView+Frame.h
//  MBYPageControl
//
//  Created by mabaoyan on 2017/3/2.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frame)

@property (nonatomic, assign, readonly)CGFloat x;
@property (nonatomic, assign, readonly)CGFloat y;
@property (nonatomic, assign, readonly)CGFloat width;
@property (nonatomic, assign, readonly)CGFloat height;
@property (nonatomic, assign, readonly)CGFloat left;
@property (nonatomic, assign, readonly)CGFloat right;
@property (nonatomic, assign, readonly)CGFloat top;
@property (nonatomic, assign, readonly)CGFloat bottom;

@end
