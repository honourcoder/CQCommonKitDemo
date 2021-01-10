//
//  CQBaseViewController.h
//
//  Created by CoderQi on 2019/3/7.
//  Copyright © 2019 CoderQi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CQBaseViewController : UIViewController

/** 进行界面数据的初始化 */
-(void)doInitilizationData;

/** 进行界面元素的初始化 */
-(void)doConstructUI;

/** 重写在加载视图后从服务器上获取界面数据元素 */
-(void)doGetDataFromServerBehindLoadView;

/** 重写在页面显示前从服务器上获取界面数据元素 */
-(void)doGetDataFromServerBeforeViewWillAppear;

/** 返回响应事件 */
-(void)goBackAction;

//推出controller
-(void)doPushControllerToWindow:(UIViewController *)controller;

/** 重写左侧导航栏 */
-(UIBarButtonItem *)doInitLeftBarItem;

/** 重写右侧导航栏 */
-(UIBarButtonItem *)doInitRightBarItem;


@end

NS_ASSUME_NONNULL_END
