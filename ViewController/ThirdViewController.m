//
//  ThirdViewController.m
//  UINavigationDemo1
//
//  Created by Chuanxi.Chen on 15/9/6.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    
    NSLog(@"%s",__func__);
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    // Do any additional setup after loading the view.
}


-(void)onButtonClick:(UIButton *)button{
    NSArray * array = self.navigationController.viewControllers;
    [self.navigationController popToViewController:(UIViewController *)array[0] animated:YES];
}


-(void)viewDidDisappear:(BOOL)animated{
//    [self.navigationController setNavigationBarHidden:NO animated:YES];
     NSLog(@"%s",__func__);
}

-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:NO];
     NSLog(@"%s",__func__);
}

-(void)viewWillDisappear:(BOOL)animated{
     NSLog(@"%s",__func__);
}

-(void)viewDidAppear:(BOOL)animated{
     NSLog(@"%s",__func__);
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
