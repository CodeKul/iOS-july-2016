//
//  ViewController.m
//  PListDemo
//
//  Created by Varun on 29/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSString *path = [[NSBundle mainBundle] pathForResource:@"MyPList" ofType:@"plist"];
//    
//    NSArray *arr = [NSArray arrayWithContentsOfFile:path];
//    
//    NSLog(@"Name: %@",arr);
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths firstObject];
    
    NSString *filePath = [path stringByAppendingPathComponent:@"MyPlist.plist"];
    
    NSLog(@"FilePath: %@",filePath);
    
//    NSArray *arr = @[@"SAGAR",@"CODEKUL"];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"Sagar",@"4785748574",@"Pune", nil] forKeys:@[@"Name",@"Phone",@"City"]];
    
    [dict writeToFile:filePath atomically:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
