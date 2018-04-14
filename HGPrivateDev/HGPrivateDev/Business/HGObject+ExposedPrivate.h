//
//  HGObject+ExposedPrivate.h
//  HGPrivateDev
//
//  Created by ZhuHong on 2018/4/14.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

#import "HGObject.h"

@interface HGObject (ExposedPrivate)

/** 这是一个在原始 Class 中没有被暴露的私有属性 */
@property (nonatomic, copy) NSString* name;

@end
