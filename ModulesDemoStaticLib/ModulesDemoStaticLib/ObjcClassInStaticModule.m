//
//  ObjcClassInStaticModule.m
//  ModulesDemoStaticLib
//
//  Created by Gregor Dschung on 07.07.18.
//  Copyright © 2018 Gregor Dschung. All rights reserved.
//

#import "ObjcClassInStaticModule.h"

@implementation ObjcClassInStaticModule

- (NSString *)someOtherString {
    return @"This string is defined in an ObjC class in ModulesDemoStaticLib";
}

@end
