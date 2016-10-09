//
//  StudentListViewController.h
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *arrStudentData;
@end
