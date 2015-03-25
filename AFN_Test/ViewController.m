//
//  ViewController.m
//  AFN_Test
//
//  Created by zed-PC on 15/3/19.
//  Copyright (c) 2015年 zed-PC. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "ZGHttpTool.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *params = @{@"user_name": @"jbbbb", @"user_passwd": @"123"};
    NSString *url = @"http://120.24.81.123/zhigeng/index.php?c=login&m=register";
    
    [ZGHttpTool getWithURL:url params:params
    success:^(id json){
        NSLog(@"%@", json);
    }failure:^(NSError *error){
        NSLog(@"err");
    }]; 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
