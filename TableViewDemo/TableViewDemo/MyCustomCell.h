//
//  MyCustomCell.h
//  TableViewDemo
//
//  Created by Varun on 29/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *PlayerImageView;
@property (weak, nonatomic) IBOutlet UILabel *PlayerName;
@property (weak, nonatomic) IBOutlet UILabel *PlayerAge;
@property (weak, nonatomic) IBOutlet UILabel *PlayerScore;

@end
