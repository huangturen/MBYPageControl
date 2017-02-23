//
//  MBYPageControl.m
//  MBYPageControl
//
//  Created by mabaoyan on 2017/2/23.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import "MBYPageControl.h"

@implementation MBYPageControl

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (void)setCurrentPage:(NSInteger)currentPage{
    [super setCurrentPage:currentPage];
    [self updateDots];
}

- (void)updateDots{
    for (NSUInteger i=0; i<[self.subviews count]; ++i) {
        UIView *view = [self.subviews objectAtIndex:i];
        CGSize size = view.frame.size;
        
        if (i == self.currentPage && self.highlightImage) {
            [self setImage:self.highlightImage AtView:view];
        }
        else if (self.normalImage){
            [self setImage:self.normalImage AtView:view];
        }
        [view setFrame:CGRectMake(view.frame.origin.x, view.frame.origin.y, size.width, size.height)];
    }
}

- (void)setImage:(UIImage *)image AtView:(UIView *)view{
    if (!view) {
        return;
    }
    
    for (UIView *v in view.subviews) {
        [v removeFromSuperview];
    }
    CGSize viewSz = view.frame.size;
    CGSize imgSz = image.size;
    UIImageView *dot = [[UIImageView alloc] initWithFrame:CGRectMake((viewSz.width - imgSz.width)/2.0,
                                                                     (viewSz.height - imgSz.height)/2.0,
                                                                     imgSz.width,
                                                                     imgSz.height)];
    dot.image = image;
    dot.layer.cornerRadius = imgSz.width/2.0;
    dot.layer.masksToBounds = YES;
    [view addSubview:dot];
    view.backgroundColor = [UIColor clearColor];
}

@end
