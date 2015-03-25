//
//  ZGHttpTool.h
//  AFN_Test
//
//  Created by zed-PC on 15/3/19.
//  Copyright (c) 2015年 zed-PC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZGHttpTool : NSObject
+ (void)getWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id json))success failure:(void (^)(NSError *error))failure;
@end
