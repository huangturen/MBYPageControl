//
//  UIView+Frame.m
//  MBYPageControl
//
//  Created by mabaoyan on 2017/3/2.
//  Copyright © 2017年 mabaoyan. All rights reserved.
//

#import "UIView+Frame.h"

@interface UIView ()

@property (nonatomic, assign, readwrite)CGFloat x;
@property (nonatomic, assign, readwrite)CGFloat y;
@property (nonatomic, assign, readwrite)CGFloat width;
@property (nonatomic, assign, readwrite)CGFloat height;
@property (nonatomic, assign, readwrite)CGFloat left;
@property (nonatomic, assign, readwrite)CGFloat right;
@property (nonatomic, assign, readwrite)CGFloat top;
@property (nonatomic, assign, readwrite)CGFloat bottom;

@end

@implementation UIView (Frame)

- (CGFloat) x;{
    return self.frame.origin.x;
}
- (CGFloat) y;{
    return self.frame.origin.y;
}
- (CGFloat) width;{
    return self.frame.size.width;
}
- (CGFloat) height;{
    return self.frame.size.height;
}
- (CGFloat) left;{
    return self.frame.origin.x;
}
- (CGFloat) right;{
    return self.frame.origin.x + self.width;
}
- (CGFloat) top;{
    return self.frame.origin.y;
}
- (CGFloat) bottom;{
    return self.frame.origin.y + self.height;
}

@end
