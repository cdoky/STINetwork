//
//  ViewController.m
//  STINetworkDemo
//
//  Created by phil on 15/11/16.
//  Copyright © 2015年 phil Zhang. All rights reserved.
//

#import "ViewController.h"
#import "Dribbble.h"
#import "Samurai_Predefine.h"

@interface ViewController ()

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
            //todo something
        }
        else
        {
            //request faild
        }
    };
    
    [api send];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
