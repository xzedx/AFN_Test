//
//  ZGHttpTool.m
//  AFN_Test
//
//  Created by zed-PC on 15/3/19.
//  Copyright (c) 2015年 zed-PC. All rights reserved.
//

#import "ZGHttpTool.h"
#import "AFNetworking.h"
@implementation ZGHttpTool

+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure{
//    创建请求管理对象
    AFHTTPRequestOperationManager *mgr = [AFHTTPRequestOperationManager manager];
    
//    发送请求
    [mgr GET:url parameters:params
     success:^(AFHTTPRequestOperation *operation, id responseObj){
         if (success) {
             success(responseObj);
         }
     }failure:^(AFHTTPRequestOperation *operation, NSError *error){
         if (failure) {
             failure(error);
         }
     }];
}
@end
