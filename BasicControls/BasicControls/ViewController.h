//
//  ViewController.h
//  BasicControls
//
//  Created by Varun on 20/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

/*- (IBAction)switchValueChanged:(UISwitch *)sender;*/
- (IBAction)valuechanged:(UISlider *)sender;
- (IBAction)valuechanged:(UISegmentedControl *)sender forEvent:(UIEvent *)event;
- (IBAction)aaa:(UISwitch *)sender;

@end

