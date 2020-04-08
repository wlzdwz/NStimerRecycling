//
//  Middleware.m
//  定时器
//
//  Created by wuliangzhi on 2020/4/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//


#import "Middleware.h"

@implementation Middleware

- (instancetype)initWithDelegate:(id<MiddlewareDelegate>)delegate{
    self = [super init];
    if (self) {
        self.delegate = delegate;
    }
    return self;
}

- (void)timeAction:(NSTimer *)timer{
    [self.delegate delegateTimerAction];
}

- (void)dealloc{
    NSLog(@"中间对象释放------");
}


@end
