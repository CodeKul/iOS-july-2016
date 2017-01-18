//
//  ViewController.m
//  GestureDemo
//
//  Created by Varun on 16/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UISwipeGestureRecognizer *gesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(viewLeftSwipe:)];
    gesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [view2 addGestureRecognizer:gesture];
    
    UILongPressGestureRecognizer *longGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longPressGesture:)];
    
    longGesture.minimumPressDuration = 3;
    
    [view3 addGestureRecognizer:longGesture];
    
}
-(void) longPressGesture:(UILongPressGestureRecognizer *) gesture {
    [self.view setBackgroundColor:[UIColor magentaColor]];
}

-(void) viewLeftSwipe:(UISwipeGestureRecognizer *) gesture {
    
    [self.view setBackgroundColor:[UIColor yellowColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewTapped:(UITapGestureRecognizer *)sender {
    
    self.view.backgroundColor = [UIColor redColor];
}

- (IBAction)rotateGesture:(id)sender {
    
   self.view.backgroundColor = [UIColor grayColor];
    
}

- (IBAction)panGesture:(id)sender {
    self.view.backgroundColor = [UIColor blackColor];
}
@end
