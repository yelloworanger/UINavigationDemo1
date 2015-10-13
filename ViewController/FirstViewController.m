//
//  FirstViewController.m
//  UINavigationDemo1
//
//  Created by Chuanxi.Chen on 15/9/6.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.
    [self navigationSetting];
}

-(void)navigationSetting{
    
//    设置标题1，2，3
//    self.title = @"第一页";
    self.navigationItem.title =  @"第一页";
//    self.navigationItem.titleView = [[UISlider alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    
//    设置左按钮
    UIBarButtonItem *lItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(onLeftButtonClick:)];
    self.navigationItem.leftBarButtonItem = lItem;
    
    UIBarButtonItem *lItem1 = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back.png"] style:UIBarButtonItemStyleDone target:self action:@selector(onLeftButtonClick:)];
    self.navigationItem.leftBarButtonItem = lItem1;
    
    
    UIBarButtonItem *lItemText = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(onLeftButtonClick:)];
    self.navigationItem.leftBarButtonItem = lItemText;
    
//    self.navigationItem.leftBarButtonItems
    
}

-(void)onLeftButtonClick:(UIButton *)button{
    
}


-(void)onButtonClick:(UIButton *)button{
    SecondViewController *secondVC = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
