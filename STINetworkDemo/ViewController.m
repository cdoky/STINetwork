//
//  ViewController.m
//  STINetworkDemo
//
//  Created by phil on 15/11/16.
//  Copyright © 2015年 phil Zhang. All rights reserved.
//

#import "ViewController.h"
#import "Dribbble.h"
#import <objc/runtime.h>
#import "STINetworkHeader.h"

@interface ViewController ()
@property NSString *str;
@singleton(ViewController)
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    LIST_SHOTS_API * api = [LIST_SHOTS_API new];
    
    api.req.page = 1;
    api.req.per_page = 18;
    api.req.list = @"popular";
    
    api.whenUpdated = ^( LIST_SHOTS_RESPONSE * resp, id error ) {
        
        if ( resp )
        {
            //request success
            NSArray<SHOT> *shots = resp.data;
            SHOT *shot = shots[0];
            //todo something
        }
        else
        {
            //request faild
        }
    };
    
    [api send];
    
    unsigned int outCount = 0;
    Ivar * ivars = class_copyIvarList([ViewController class], &outCount);
    for (unsigned int i = 0; i < outCount; i ++) {
        Ivar ivar = ivars[i];
        const char * name = ivar_getName(ivar);
        const char * type = ivar_getTypeEncoding(ivar);
        NSLog(@"类型为 %s 的 %s ",type, name);
    }
    free(ivars);
}

- (void)injected
{
    unsigned int outCount = 0;
    objc_property_t * properties = class_copyPropertyList([ViewController class], &outCount);
    for (unsigned int i = 0; i < outCount; i ++) {
        objc_property_t property = properties[i];
        //属性名
        const char * name = property_getName(property);
        //属性描述
        const char * propertyAttr = property_getAttributes(property);
        NSLog(@"属性描述为 %s 的 %s ", propertyAttr, name);
        
        //属性的特性
        unsigned int attrCount = 0;
        objc_property_attribute_t * attrs = property_copyAttributeList(property, &attrCount);
        for (unsigned int j = 0; j < attrCount; j ++) {
            objc_property_attribute_t attr = attrs[j];
            const char * name = attr.name;
            const char * value = attr.value;
            NSLog(@"属性的描述：%s 值：%s", name, value);
        }
        free(attrs);
        NSLog(@"\n");
    }
    free(properties);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
