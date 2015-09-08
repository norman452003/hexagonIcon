//
//  ViewController.m
//  IconDemo
//
//  Created by 龚欣 on 15/9/8.
//  Copyright (c) 2015年 GX. All rights reserved.
//

#import "ViewController.h"
#import "IconView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    IconView *iconV = [[IconView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:iconV];
    iconV.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
