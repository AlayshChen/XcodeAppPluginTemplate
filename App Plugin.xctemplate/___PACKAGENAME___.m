//
//  ___FILENAME___
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

#import "___FILEBASENAME___.h"
#import "___PACKAGENAME___Header.h"

#pragma mark - Plugin

@implementation NSObject (___PACKAGENAME___)

@end

@implementation UIView (___PACKAGENAME___)

@end

@implementation UIViewController (___PACKAGENAME___)

@end

static void __attribute__((constructor)) initialize(void) {
    NSLog(@"++++++++ ___FILEBASENAME___ loaded ++++++++");
}