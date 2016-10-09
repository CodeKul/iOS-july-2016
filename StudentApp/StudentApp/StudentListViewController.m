//
//  StudentListViewController.m
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "StudentListViewController.h"
#import "Student.h"
#import "StudentDetailViewController.h"

@interface StudentListViewController ()

@end

@implementation StudentListViewController
@synthesize arrStudentData;
- (void)viewDidLoad {
    [super viewDidLoad];
   
//    NSUserDefaults *UD =[NSUserDefaults standardUserDefaults];
//    
//    arrStudentData =[UD objectForKey:@"student"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrStudentData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    Student *s = [arrStudentData objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ : %@",s.rollNo,s.name];
    cell.detailTextLabel.text = s.marks;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    StudentDetailViewController* StdVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"StudentDetailViewController"];
    
    Student *s = [arrStudentData objectAtIndex:indexPath.row];
    
    StdVC.strName = s.name;
    StdVC.strRollNo = s.rollNo;
    StdVC.strMarks = s.marks;
    
    [self presentViewController:StdVC animated:YES completion:nil];
    
}

@end
