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
        sharedInstance = [[super allocWithZone:NULL] init];
        [sharedInstance createDB];
    }
    return sharedInstance;
}

-(void)copyDatabaseIntoDocumentsDirectory {

    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];

    
    NSString *destinationPath = [docsDir stringByAppendingPathComponent:@"stu.db"];
    if (![[NSFileManager defaultManager] fileExistsAtPath:destinationPath]) {
        // The database file does not exist in the documents directory, so copy it from the main bundle now.
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"stu.db"];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];
        
        // Check if any error occurred during copying and display it.
        if (error != nil) {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}

-(NSString *) getDBPath {
    
    NSString *docsDir;
    NSArray *dirPaths;
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains
    (NSDocumentDirectory, NSUserDomainMask, YES);
    docsDir = dirPaths[0];
    // Build the path to the database file
    NSString *databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"stu.db"]];
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
                    [docsDir stringByAppendingPathComponent: @"stu.db"]];
    BOOL isSuccess = YES;
    NSFileManager *filemgr = [NSFileManager defaultManager];
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
        const char *dbpath = [databasePath UTF8String];
        sqlite3 *database = nil;
        if (sqlite3_open(dbpath, &database) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "create table if not exists studentsDetail (rno integer primary key, name text, marks text)";
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

-(BOOL) saveData:(NSString*)rollNumber name:(NSString*)name marks:(NSString*)marks {
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *insertSQL = [NSString stringWithFormat:@"insert into studentsDetail (rno,name, marks) values (\"%@\",\"%@\", \"%@\")",rollNumber, name, marks];
        
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

-(NSArray*) findByRollNumber:(NSString*)rollNumber {

    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *querySQL = [NSString stringWithFormat: @"select name, marks from studentsDetail where rno=\"%@\"",rollNumber];
        const char *query_stmt = [querySQL UTF8String];
        
        NSMutableArray *resultArray = [[NSMutableArray alloc]init];
        
        sqlite3_stmt *statement = nil;
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            if (sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *name = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
                [resultArray addObject:name];
                NSString *marks = [[NSString alloc]initWithUTF8String:
                                  (const char *) sqlite3_column_text(statement, 1)];
                [resultArray addObject:marks];
                
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
        NSString *querySQL = [NSString stringWithFormat: @"select * from studentsDetail"];
        const char *query_stmt = [querySQL UTF8String];
        
        NSMutableArray *resultArray = [[NSMutableArray alloc]init];
        
        sqlite3_stmt *statement = nil;
        if (sqlite3_prepare_v2(database, query_stmt, -1, &statement, NULL) == SQLITE_OK)
        {
            while(sqlite3_step(statement) == SQLITE_ROW)
            {
                NSString *rno = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 0)];
               
                NSString *name = [[NSString alloc] initWithUTF8String: (const char *) sqlite3_column_text(statement, 1)];

                NSString *marks = [[NSString alloc]initWithUTF8String: (const char *) sqlite3_column_text(statement, 2)];
                
                NSDictionary *dict = [NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:rno,name,marks, nil] forKeys:[NSArray arrayWithObjects:@"RollNo",@"Name",@"Marks", nil]];
                
                [resultArray addObject:dict];
                
            }
            return resultArray;
        }
    }
    return nil;
}

-(BOOL) updateDataWithRollNumber:(NSString *)rollNumber name:(NSString *)name marks:(NSString *) marks{
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *updateSQL = [NSString stringWithFormat:@"update studentsDetail set name = \"%@\", marks = \"%@\" where rno = \"%@\"", name, marks,rollNumber];
        
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

-(BOOL) deleteRecordWithRollNumber:(NSString *)rollNumber {
    
    const char *dbpath = [[self getDBPath] UTF8String];
    sqlite3 *database = nil;
    if (sqlite3_open(dbpath, &database) == SQLITE_OK)
    {
        NSString *updateSQL = [NSString stringWithFormat:@"delete from studentsDetail where rno = \"%@\"",rollNumber];
        
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
