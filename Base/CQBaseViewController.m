//
//  CQBaseViewController.m
//
//  Created by CoderQi on 2019/3/7.
//  Copyright © 2019 CoderQi. All rights reserved.
//

#import "CQBaseViewController.h"

@interface CQBaseViewController ()

@end

@implementation CQBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self doInitBaseView];
    [self doInitilizationData];
    [self doGetDataFromServerBehindLoadView];
    [self doConstructUI];
}

/** 通用页面的初始化 */
-(void)doInitBaseView{
    //设置页面的初始背景颜色为tableview的背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    //设置导航栏透明
//    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
//    self.navigationController.navigationBar.translucent = NO;

    
//    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
//    self.navigationItem.leftBarButtonItem = [self doInitLeftBarItem];
    if([self doInitRightBarItem]){
        self.navigationItem.rightBarButtonItem = [self doInitRightBarItem];
    }
}

-(void)doInitilizationData{
    
}

-(UIBarButtonItem *)doInitLeftBarItem{
    UIBarButtonItem *left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"ic_back_black"] style:UIBarButtonItemStyleDone target:self action:@selector(goBackAction)];
    left.tintColor = [UIColor whiteColor];
    return left;
}

-(UIBarButtonItem *)doInitRightBarItem{
    return nil;
}

/** 重写进行界面元素的初始化 */
-(void)doConstructUI{
    
}

/** 重写在加载视图后从服务器上获取界面数据元素 */
-(void)doGetDataFromServerBehindLoadView{
    
}

/** 重写在页面显示前从服务器上获取界面数据元素 */
-(void)doGetDataFromServerBeforeViewWillAppear{
    
}

-(void)doPushControllerToWindow:(UIViewController *)controller{
    controller.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:controller animated:YES];
}

-(void)goBackAction{
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self doGetDataFromServerBeforeViewWillAppear];
}

@end
