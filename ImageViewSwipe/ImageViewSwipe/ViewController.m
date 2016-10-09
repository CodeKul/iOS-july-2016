//
//  ViewController.m
//  ImageViewSwipe
//
//  Created by Varun on 16/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UIImageView *imageViewLeft, *imageViewRight;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)leftSwipe:(id)sender {
    
    UIImage *tempImage = imageViewLeft.image;
    imageViewLeft.image = imageViewRight.image;
    imageViewRight.image = tempImage;
}

-(IBAction)rightSwipe:(id)sender {
    
    UIImage *tempImage = imageViewLeft.image;
    imageViewLeft.image = imageViewRight.image;
    imageViewRight.image = tempImage;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
