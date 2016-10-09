//
//  ViewController.m
//  testProject
//
//  Created by Varun on 30/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "StudentModelClass.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _lbl_name.text=@"Nilesh";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidDisappear:(BOOL)animated{
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

-(void)viewWillDisappear:(BOOL)animated{
    
}

-(void)viewWillAppear:(BOOL)animated{
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"segue1"]) {
        StudentModelClass *std=[[StudentModelClass alloc]init];
        std.std_Name=@"Codekul";
        SecondViewController *vc = (SecondViewController *)segue.destinationViewController;
        vc.student=std;
    }
}

@end
