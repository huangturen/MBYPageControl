//
//  MBYPageControl.m
//  MBYPageControl
//
//  Created by mabaoyan on 2017/2/23.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import "MBYPageControl.h"
#import "UIImage+Scale.h"
#import "UIView+Frame.h"

@interface MBYPageControl ()

@property (nonatomic, assign)CGFloat dotSpace;

@end

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
    
    if (self.dotSpace > 0 && imgSz.width > (viewSz.width+self.dotSpace)) {
        image = [image rescaleImageToSize:CGSizeMake(viewSz.width+self.dotSpace, image.size.height)];
        [self setImage:image AtView:view];
        return;
    }
    
    if (self.needRoundDot) {
        CGFloat width = MIN(imgSz.width, imgSz.height);
        image = [image rescaleImageToSize:CGSizeMake(width, width)];
        imgSz = image.size;
    }
    

    UIImageView *dot = [[UIImageView alloc] initWithFrame:CGRectMake((viewSz.width - imgSz.width)/2.0,
                                                                     (viewSz.height - imgSz.height)/2.0,
                                                                     imgSz.width,
                                                                     imgSz.height)];
    dot.image = image;
    if (self.needRoundDot) {
        dot.layer.cornerRadius = imgSz.width/2.0;
    }
    dot.layer.masksToBounds = YES;
    [view addSubview:dot];
    view.backgroundColor = [UIColor clearColor];
}

- (CGFloat)dotSpace{
    if (self.subviews.count < 2) {
        return -1.0; //dot不足，不能计算
    }
    
    return self.subviews[1].left - self.subviews[0].right;
}

@end
