//
//  MasterViewController.h
//  SplitViewControllerDemo
//
//  Created by Varun on 02/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Monster.h"
@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (nonatomic, strong) NSMutableArray *monsters;

@end

