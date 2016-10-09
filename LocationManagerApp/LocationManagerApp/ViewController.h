//
//  ViewController.h
//  LocationManagerApp
//
//  Created by Varun on 26/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblLat;
@property (weak, nonatomic) IBOutlet UILabel *lblLong;

@end

