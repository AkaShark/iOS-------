//
//  ViewController.m
//  MedthPerform
//
//  Created by Liu,Shuhao(CPRD02) on 2020/7/28.
//  Copyright © 2020 Liu,Shuhao(CPRD02). All rights reserved.
//

#import "ViewController.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    performSelector 调用方法 可以携带参数 可以设置afterDelay
//    [self performSelector:@selector(testFunc1:Time:) withObject:@"哈哈" withObject:[NSDate date]];
//    [self performSelector:@selector(testFunc1:Time:) withObject:@"111" afterDelay:2];
    
//    NSString *str = @"啦啦";
//    NSDate *date = [NSDate date];
//    SEL selector = @selector(testFunc1:Time:);
//    NSMethodSignature *signature = [self methodSignatureForSelector:selector];
//    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
//    invocation.target = self;
//    invocation.selector = selector;
//    //  第一个参数 默认参数是self 和 _cmd 还有一个！！ 这样的话就是对了
//    [invocation setArgument:&str atIndex:2];
//    [invocation setArgument:&date atIndex:3];
//    //  执行
//    [invocation invoke];
    
//    id target = self;
//    SEL selector = @selector(testFunc1:Time:);
//    typedef void (*function)(id, SEL, NSString *, NSDate *);
//// methodForSelector返回一个IMP 方法实现
//    function methodToCall = (function)[target methodForSelector:selector];
//    methodToCall(target, selector, @"哦哦", [NSDate date]);
    
    SEL selector = @selector(testFunc1:Time:);
    void (*function)(id, SEL, NSString *, NSDate *) = (void (*)(id, SEL, NSString *, NSDate *))objc_msgSend;
    function(self,selector,@"giao",[NSDate date]);
    
}

- (void)testFunc1:(NSString *)str
             Time:(NSDate *)time {
    NSLog(@"%@---str:%@  time:%@", NSStringFromSelector(_cmd), str, time);
}

- (void)testFunc2:(NSString *)str1
             Str2:(NSString *)str2
             Str3:(NSString *)str3 {
    
}


@end
