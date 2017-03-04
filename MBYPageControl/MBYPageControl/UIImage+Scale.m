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

+ (UIImage *)imageFromColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, NO, 0.0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
