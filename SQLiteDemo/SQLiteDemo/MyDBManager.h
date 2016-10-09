//
//  MyDBManager.h
//  SQLiteDemo
//
//  Created by Varun on 15/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDBManager : NSObject

-(void)copyDatabaseIntoDocumentsDirectory;

+(MyDBManager*)getSharedInstance;

-(BOOL)createDB;

-(BOOL) saveData:(NSString*)rollNumber name:(NSString*)name marks:(NSString*)marks;

-(NSArray*) findByRollNumber:(NSString*)rollNumber;

-(NSArray*) getAllRecords;

-(BOOL) updateDataWithRollNumber:(NSString *)rollNumber name:(NSString *)name marks:(NSString *) marks;

-(BOOL) deleteRecordWithRollNumber:(NSString *)rollNumber;

@end
