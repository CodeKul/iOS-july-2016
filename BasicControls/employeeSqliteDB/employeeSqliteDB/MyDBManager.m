//
//  MyDBManager.m
//  SQLiteDemo
//
//  Created by Varun on 15/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "MyDBManager.h"
#import <sqlite3.h>

static MyDBManager *sharedInstance = nil;

@implementation MyDBManager

+(MyDBManager *) getSharedInstance {
    
    if (!sharedInstance) {
        sharedInstance = [[super alloc] init];
        [sharedInstance createDB];
    }
    return sharedInstance;
}

-(NSString *) getDBPath {
    
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    // Build the path to the database file
    NSString *databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"employee.db"]];
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
        return nil;
    }
    return databasePath;
}

-(BOOL)createDB {
    
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    // Build the path to the database file
    NSString *databasePath = [[NSString alloc] initWithString:
                    [docsDir stringByAppendingPathComponent: @"employee.db"]];
    BOOL isSuccess = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
        const char *dbpath = [databasePath UTF8String];
        sqlite3 *database = nil;
        if (sqlite3_open(dbpath, &database) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "create table if not exists employeeDetail (EmployeeId integer primary key, name text, designation text, salary text)";
            if (sqlite3_exec(database, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                isSuccess = NO;
                NSLog(@"Failed to create table");
            }
            sqlite3_close(database);
            return  isSuccess;
        }
        else {
            isSuccess = NO;
            NSLog(@"Failed to open/create database");
        }
    }
    return isSuccess;
}

-(BOOL) saveData:(NSString*)EmployeeId name:(NSString*)name designation:(NSString*)designation salary:(NSString*)salary {
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"insert into employeeDetail (EmployeeId,name, designation, salary) values (\"%@\",\"%@\", \"%@\", \"%@\")",EmployeeId, name, designation, salary];
        
        const char *insert_stmt = [insertSQL UTF8String];
        sqlite3_stmt *statement = nil;
        sqlite3_prepare_v2(database, insert_stmt,-1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            return YES;
        }
        else {
            return NO;
        }
    }
    return NO;
}

-(NSArray*) findByEmployeeId:(NSString*)EmployeeId {

    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat: @"select name, designation, salary from employeeDetail where EmployeeId=\"%@\"",EmployeeId];
        const char *query_stmt = [querySQL UTF8String];
        
        NSMutableArray *resultArray = [[NSMutableArray alloc]init];
        
        sqlite3_stmt *statement = nil;
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *name = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
                [resultArray addObject:name];
                NSString *designation = [[NSString alloc]initWithUTF8String: (const char *) sqlite3_column_text(statement, 1)];
                [resultArray addObject:designation];
                NSString *salary = [[NSString alloc]initWithUTF8String: (const char *) sqlite3_column_text(statement, 2)];
                [resultArray addObject:salary];
                
                return resultArray;
            }
            else{
                NSLog(@"Not found");
                return nil;
            }
        }
    }
    return nil;
}

-(NSArray*) getAllRecords {
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat: @"select * from employeeDetail"];
        const char *query_stmt = [querySQL UTF8String];
        
        NSMutableArray *resultArray = [[NSMutableArray alloc]init];
        
        sqlite3_stmt *statement = nil;
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            while(sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *EmployeeId = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
               
                NSString *name = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 1)];

                NSString *designation = [[NSString alloc]initWithUTF8String: (const char *) sqlite3_column_text(statement, 2)];
                
                 NSString *salary = [[NSString alloc]initWithUTF8String: (const char *) sqlite3_column_text(statement, 3)];
                
                NSDictionary *dict = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:EmployeeId,name,designation,salary, nil] forKeys:[NSArray arrayWithObjects:@"EmployeeId",@"Name",@"designation",@"salary", nil]];
                
                [resultArray addObject:dict];
                
            }
            return resultArray;
        }
    }
    return nil;
}

-(BOOL) updateDataWithEmployeeId:(NSString *)EmployeeId name:(NSString *)name designation:(NSString *) designation salary:(NSString *) salary{
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *updateSQL = [NSString stringWithFormat:@"update employeeDetail set name = \"%@\", designation = \"%@\", salary = \"%@\" where EmployeeId = \"%@\"", name, designation,salary,EmployeeId];
        
        const char *updtae_stmt = [updateSQL UTF8String];
        sqlite3_stmt *statement = nil;
        sqlite3_prepare_v2(database, updtae_stmt,-1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            return YES;
        }
        else {
            NSLog(@"error: %s", sqlite3_errmsg(database));
            return NO;
        }
    }
    return NO;
}

-(BOOL) deleteRecordWithEmployeeId:(NSString *)EmployeeId {
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *updateSQL = [NSString stringWithFormat:@"delete from employeeDetail where EmployeeId = \"%@\"",EmployeeId];
        
        const char *updtae_stmt = [updateSQL UTF8String];
        sqlite3_stmt *statement = nil;
        sqlite3_prepare_v2(database, updtae_stmt,-1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            return YES;
        }
        else {
            return NO;
        }
    }
    return NO;
}

@end
