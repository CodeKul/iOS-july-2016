//
//  Student+CoreDataProperties.h
//  SecondCoreData
//
//  Created by Varun on 18/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *stuName;
@property (nullable, nonatomic, retain) NSString *stuRno;
@property (nullable, nonatomic, retain) NSString *stuMarks;

@end

NS_ASSUME_NONNULL_END
