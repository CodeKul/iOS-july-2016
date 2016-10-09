//
//  ViewController.h
//  GestureDemo
//
//  Created by Varun on 16/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIView *view1,*view2,*view3,*view4;
}
- (IBAction)viewTapped:(UITapGestureRecognizer *)sender;

- (IBAction)rotateGesture:(id)sender;
- (IBAction)panGesture:(id)sender;

@end

