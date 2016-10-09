//
//  Company+CoreDataProperties.h
//  CoreDataDemo
//
//  Created by Varun on 18/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Company.h"

NS_ASSUME_NONNULL_BEGIN

@interface Company (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *empName;
@property (nullable, nonatomic, retain) NSString *empDesi;
@property (nullable, nonatomic, retain) NSString *empId;

@end

NS_ASSUME_NONNULL_END
