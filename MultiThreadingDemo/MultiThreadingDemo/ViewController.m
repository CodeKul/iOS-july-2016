//
//  ViewController.m
//  MultiThreadingDemo
//
//  Created by Varun on 01/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UIImageView *myImageView;
    IBOutlet UIActivityIndicatorView *spinner;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    dispatch_queue_t myQueue = dispatch_queue_create("myQueue", NULL);
    
    [spinner startAnimating];

    dispatch_async(myQueue, ^{
        
        NSLog(@"Background thread");
        
        NSData *imgData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://upload.wikimedia.org/wikipedia/commons/4/46/Indian_Army_T-72_image_2.jpg"]];
        NSLog(@"Downloaded");
        dispatch_async(dispatch_get_main_queue(), ^{
            myImageView.image = [UIImage imageWithData:imgData];
            NSLog(@"Image Set");
            [spinner stopAnimating];
        });
    });
    
    NSLog(@"Main thread");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
