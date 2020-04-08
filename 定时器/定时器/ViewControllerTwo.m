//
//  ViewControllerTwo.m
//  定时器
//
//  Created by wuliangzhi on 2020/4/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//

#import "ViewControllerTwo.h"
#import "Middleware.h"

@interface ViewControllerTwo ()<MiddlewareDelegate>

@property(nonatomic,strong)NSTimer *timer; /** 定时器 */
@property(nonatomic,strong)Middleware *middleware; /** <<#注释#> */

@end

@implementation ViewControllerTwo

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.middleware = [[Middleware alloc] initWithDelegate:self];
    self.timer = [NSTimer timerWithTimeInterval:2 target:self.middleware selector:@selector(timeAction:) userInfo:nil repeats:YES];
    
//    self.timer = [NSTimer timerWithTimeInterval:2 target:self selector:@selector(timeBegin) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
    
    
}

- (void)timeBegin{
    NSLog(@"------%f",CACurrentMediaTime());
}


- (void)delegateTimerAction{
    NSLog(@"-----two%f",CACurrentMediaTime());
}


- (void)dealloc{
    NSLog(@"有来这里----");
    [self.timer invalidate];
    self.timer = nil;
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
