//
//  ViewControllerOne.m
//  定时器
//
//  Created by wuliangzhi on 2020/4/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//

#import "ViewControllerOne.h"
#import "Middleware.h"

@interface ViewControllerOne ()<MiddlewareDelegate>

@property(nonatomic,strong)NSTimer *timer; /** 定时器 */
@property(nonatomic,strong)Middleware *middleware; /** <<#注释#> */

@end

@implementation ViewControllerOne

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.middleware = [[Middleware alloc] initWithDelegate:self];
    self.timer = [NSTimer timerWithTimeInterval:2 target:self.middleware selector:@selector(timeAction:) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}


- (void)delegateTimerAction{
    NSLog(@"%f",CACurrentMediaTime());
}


- (void)dealloc{
    NSLog(@"有来这里----");
}

@end
