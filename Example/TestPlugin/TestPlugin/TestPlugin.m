//
//  TestPlugin.m
//  TestPlugin
//
//  Created by CorbinChen on 2017/4/2.
//  Copyright (c) 2017年 CorbinChen. All rights reserved.
//

#import "TestPlugin.h"
#import "TestPluginHeader.h"

#pragma mark - Plugin

@implementation NSObject (TestPlugin)

@end

@implementation UIView (TestPlugin)

@end

@implementation UIViewController (TestPlugin)

- (void)cb_viewDidLoad {
    [self cb_viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
}

@end

static void __attribute__((constructor)) initialize(void) {
    NSLog(@"++++++++ TestPlugin loaded ++++++++");
    CBHookInstanceMethod(UIViewController, @selector(viewDidLoad), @selector(cb_viewDidLoad));
}
