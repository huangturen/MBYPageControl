//
//  UIImage+Scale.m
//  MBYPageControl
//
//  Created by mabaoyan on 2017/3/2.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import "UIImage+Scale.h"

@implementation UIImage (Scale)

- (UIImage *)rescaleImageToSize:(CGSize)size
{
    CGRect rect = CGRectMake(0.0, 0.0, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, [UIScreen mainScreen].scale);
    [self drawInRect:rect];  // scales image to rect
    UIImage *resImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resImage;
}

@end
