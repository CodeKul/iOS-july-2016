//
//  ViewController.m
//  ScrollViewDemo
//
//  Created by Varun on 01/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myContentView,myScrollView;

- (void)viewDidLoad {
    [super viewDidLoad];

    myScrollView.contentSize = myContentView.frame.size;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
