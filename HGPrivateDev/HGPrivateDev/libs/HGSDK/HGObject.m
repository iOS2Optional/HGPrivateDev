//
//  HGObject.m
//  HGPrivateDev
//
//  Created by ZhuHong on 2018/4/14.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "HGObject.h"

@interface HGObject ()

/** 这是一个私有属性 */
@property (nonatomic, copy) NSString* name;

@end

@implementation HGObject

- (void)setName:(NSString *)name {
    _name = name.copy;
    
    // TODO:
    NSLog(@"setter 方法被调用 = %@", _name);
}

@end
