//
//  Middleware.h
//  定时器
//
//  Created by wuliangzhi on 2020/4/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MiddlewareDelegate <NSObject>

- (void)delegateTimerAction;

@end
NS_ASSUME_NONNULL_BEGIN

@interface Middleware : NSObject

@property(nonatomic,weak)id<MiddlewareDelegate> delegate; /** <<#注释#> */

- (instancetype)initWithDelegate:(id<MiddlewareDelegate>)delegate;

- (void)timeAction:(NSTimer *)timer;

@end

NS_ASSUME_NONNULL_END
