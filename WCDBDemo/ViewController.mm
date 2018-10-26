//
//  ViewController.m
//  WCDBDemo
//
//  Created by wuyonglin on 2018/10/26.
//  Copyright © 2018年 IceCreamWu. All rights reserved.
//

#import "ViewController.h"
#import "WCDBModel+WCTTableCoding.h"
#import <WCDB/WCDB.h>



@interface ViewController ()

@property (nonatomic, strong) WCTDatabase *database;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES);
    NSString *documentsDirectory = [documentPaths objectAtIndex:0];
    NSString *dbPath = [documentsDirectory stringByAppendingPathComponent:@"test.db"];
    self.database = [[WCTDatabase alloc] initWithPath:dbPath];
    BOOL result = [self.database createTableAndIndexesOfName:WCDBModelTName withClass:WCDBModel.class];
    NSLog(@"%@:%@", dbPath, @(result));
    
    WCDBModel *model = [[WCDBModel alloc] init];
    model.name = @"wyl";
    model.age = 1;
    [self.database insertObject:model into:WCDBModelTName];
}

- (void)didReceiveMemoryWarning {
    WCTTable *table = [self.database getTableOfName:WCDBModelTName withClass:WCDBModel.class];
    NSArray *allObjs = [table getAllObjects];
    NSLog(@"%@", allObjs);
}


@end
