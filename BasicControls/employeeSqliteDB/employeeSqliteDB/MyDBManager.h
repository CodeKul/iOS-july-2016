//
//  MyDBManager.h
//  SQLiteDemo
//
//  Created by Varun on 15/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyDBManager : NSObject



+(MyDBManager*)getSharedInstance;

-(BOOL)createDB;

-(BOOL) saveData:(NSString*)EmployeeId name:(NSString*)name designation:(NSString*)designation salary:(NSString*)salary;

-(NSArray*) findByEmployeeId:(NSString*)EmployeeId;

-(NSArray*) getAllRecords;

-(BOOL) updateDataWithEmployeeId:(NSString *)EmployeeId name:(NSString *)name designation:(NSString *) designation salary:(NSString *) salary;

-(BOOL) deleteRecordWithEmployeeId:(NSString *)EmployeeId;

@end
