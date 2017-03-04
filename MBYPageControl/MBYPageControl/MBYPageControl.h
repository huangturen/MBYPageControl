//
//  MBYPageControl.h
//  MBYPageControl
//
//  Created by mabaoyan on 2017/2/23.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//


#import <UIKit/UIKit.h>

/**
 This is a subClass of UIPageControl
 You can apply two images to define the dot style you want
 the different size of normal Image and highlight image can made by transform two different size images
 
 e.g:
 make an image for normalImage which size equals CGSizeMake(10,10) and the other size is CGSizeMake(20,20),then the size of two kinds of dots will be different
 
 if you just have colors of dots, then make images with catogory of UIImage+Scale, The API you can use is:
 + (UIImage *)imageFromColor:(UIColor *)color size:(CGSize)size;

 The shape can be self-defined. if you want a round dot, the property "needRoundDot" should be set YES while you set a rect image or just set a round image;
 
 */
@interface MBYPageControl : UIPageControl

@property (nonatomic, strong)UIImage    *normalImage;
@property (nonatomic, strong)UIImage    *highlightImage;
@property (nonatomic, assign)BOOL       needRoundDot;

@end
