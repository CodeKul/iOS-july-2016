//
//  ViewController.m
//  CoreDataDemo
//
//  Created by Varun on 18/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "Company+CoreDataProperties.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}

- (IBAction)save:(id)sender {
    NSManagedObjectContext *context = [self managedObjectContext];
    
    // Create a new managed object
    NSManagedObject *comapny = [NSEntityDescription insertNewObjectForEntityForName:@"Company" inManagedObjectContext:context];
    [comapny setValue:@"DFGH" forKey:@"empName"];
    [comapny setValue:@"2" forKey:@"empId"];
    [comapny setValue:@"ABCDCF" forKey:@"empDesi"];
    
    NSError *error = nil;
    // Save the object to persistent store
    if (![context save:&error]) {
        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
}

-(IBAction)showData:(id)sender {
    
    NSManagedObjectContext *managedObjectContext = [self managedObjectContext];
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Company"];
    NSArray *arrData = [managedObjectContext executeFetchRequest:fetchRequest error:nil];
    
    Company *cmp = [arrData lastObject];
    
    NSLog(@"EmpId: %@\nName: %@\nDisignation: %@",cmp.empId, cmp.empName, cmp.empDesi);

}

@end
