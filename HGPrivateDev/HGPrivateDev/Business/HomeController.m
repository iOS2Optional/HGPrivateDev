//
//  HomeController.m
//  HGPrivateDev
//
//  Created by ZhuHong on 2018/4/14.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "HomeController.h"
#import "HGObject.h"
#import "HGObject+ExposedPrivate.h"

@interface HomeController ()

@end

@implementation HomeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    { // 通过 KVC 访问私有属性
        HGObject* obj = [[HGObject alloc] init];
        if ([obj respondsToSelector:@selector(setName:)]) {
            // KVC 设置值
            [obj setValue:@"KVC_Value" forKey:@"name"];
        }
        
        if ([obj respondsToSelector:@selector(name)]) {
            // 通过 KVC 获取值
            NSString* value = [obj valueForKey:@"name"];
            NSLog(@"通过 KVC 获取的值是 : %@", value);
        }
        
    }
    
    { // 通过分类操作私有属性
        HGObject* obj = [[HGObject alloc] init];
        obj.name = @"Category_Value";
        
        NSLog(@"通过分类操作私有属性 = %@", obj.name);
    }
    
    
}

@end
