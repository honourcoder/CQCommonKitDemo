//
//  CQCustomView.m
//
//  Created by CoderQi on 2019/5/1.
//  Copyright © 2019 CoderQi. All rights reserved.
//

#import "CQCustomView.h"

@implementation CQCustomView

// 扩大点击区域
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    CGFloat min_x = -_hitTestX/2;
    CGFloat min_y = -_hitTestY/2;
    CGFloat max_x = self.frame.size.width + _hitTestX/2;
    CGFloat max_y = self.frame.size.height + _hitTestY/2;
    
    if ((point.x >= min_x && point.x <= max_x) &&
        (point.y >= min_y && point.y <= max_y)) {
        point = CGPointMake(0, 0);
        return [super hitTest:point withEvent:event];
    } else {
        return [super hitTest:point withEvent:event];
    }
}

@end
