//
//  CQCustomView.h
//
//  Created by CoderQi on 2019/5/1.
//  Copyright © 2019 CoderQi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CQCustomView : UIView

/** 水平方向扩大的响应区域值，例：60，说明左右各扩大30个像素的点击区域 */
@property (assign, nonatomic) CGFloat hitTestX;

/** 垂直方向扩大的响应区域值，例：60，说明上下各扩大30个像素的点击区域 */
@property (assign, nonatomic) CGFloat hitTestY;

@end

NS_ASSUME_NONNULL_END
