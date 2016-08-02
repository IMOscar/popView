//
//  ViewController.m
//  XTPopView
//
//  Created by zjwang on 16/5/23.
//  Copyright © 2016年 夏天. All rights reserved.
//

#import "ViewController.h"
#import "XTPopView.h"
@interface ViewController ()
@property(strong,readwrite,nonatomic)UIButton *button;
@property (nonatomic, strong) UIButton *customBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
//    for (int i = 0; i < 6; i ++) {
//            //
//            UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//            btn1.frame = CGRectMake(80, 104 + i * 86, 40, 30);
//            btn1.backgroundColor = [UIColor lightGrayColor];
//            [self.view addSubview:btn1];
//            [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//            btn1.tag = i;
//    }
    UIBarButtonItem *barBtnItem = [[UIBarButtonItem alloc] initWithTitle:@"我是一个btn" style:UIBarButtonItemStylePlain target:self action:@selector(barBtnItemAction)];
    self.navigationItem.rightBarButtonItem = barBtnItem;
//    NSLog(@"width %ld,height %ld",barBtnItem.);
}
- (void)barBtnItemAction
{
    /*
    CGPoint point = CGPointMake(90,144 + 86 * 1);
    XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfUpCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
    view1.dataArray = @[@"您有一位朋友找您"];
    view1.row_height = 30;
    view1.titleTextColor = [UIColor yellowColor];
    [view1 popView];
     */
    NSArray *picArray = @[@"餐饮美食",@"电子电器",@"工艺礼品",@"广告宣传"];
    CGPoint point = CGPointMake(self.view.frame.size.width - 50, 50);
    XTPopView *view = [[XTPopView alloc] initWithOrigin:point Width:130 Height:160 Type:XTTypeOfUpRight Color:[UIColor grayColor]];
    view.dataArray = @[@"添加朋友",@"扫一扫",@"微信支付",@"附近的人"];
    view.images = picArray;
    view.fontSize = 13;
    view.row_height = 40;
    [view popView];
}
- (void)btnClick:(UIButton *)btn
{
    
    /**
     XTTypeOfUpLeft,     // 上左
     XTTypeOfUpCenter,   // 上中
     XTTypeOfUpRight,    // 上右
     
     XTTypeOfDownLeft,   // 下左
     XTTypeOfDownCenter, // 下中
     XTTypeOfDownRight,  // 下右
     
     XTTypeOfLeftUp,     // 左上
     XTTypeOfLeftCenter, // 左中
     XTTypeOfLeftDown,   // 左下
     
     XTTypeOfRightUp,    // 右上
     XTTypeOfRightCenter,// 右中
     XTTypeOfRightDown,  // 右下
     */
    switch (btn.tag) {
        case 0:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90 * 1,144);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfUpLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;
        case 1:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 1);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfUpCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;
        case 2:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 2);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfDownLeft Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;
        case 3:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 3);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfDownCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;
        case 4:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 4);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfLeftUp Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.backGoundView.alpha = 0.5;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;
        case 5:
        {
            // 如果你的控件是属性, 这里可以进行相对布局
            CGPoint point = CGPointMake(90,144 + 86 * 5);
            XTPopView *view1 = [[XTPopView alloc] initWithOrigin:point Width:200 Height:30 Type:XTTypeOfUpCenter Color:[UIColor colorWithRed:0.2737 green:0.2737 blue:0.2737 alpha:1.0]];
            view1.dataArray = @[@"您有一位朋友找您"];
            view1.row_height = 30;
            view1.titleTextColor = [UIColor yellowColor];
            [view1 popView];
        }
            break;

        default:
            break;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
