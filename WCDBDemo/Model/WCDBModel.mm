//
//  WCDBModel.mm
//  WCDBDemo
//
//  Created by wuyonglin on 2018/10/26.
//  Copyright © 2018年 IceCreamWu. All rights reserved.
//

#import "WCDBModel+WCTTableCoding.h"
#import "WCDBModel.h"
#import <WCDB/WCDB.h>

@implementation WCDBModel

WCDB_IMPLEMENTATION(WCDBModel)
WCDB_SYNTHESIZE(WCDBModel, name)
WCDB_SYNTHESIZE(WCDBModel, age)

WCDB_PRIMARY_ASC_AUTO_INCREMENT(WCDBModel, age)
WCDB_UNIQUE(WCDBModel, name)
WCDB_NOT_NULL(WCDBModel, name)

- (NSString *)description {
    NSMutableString *desc = [[NSMutableString alloc] initWithString:@""];
    [desc appendFormat:@"name:%@", _name];
    [desc appendString:@" "];
    [desc appendFormat:@"age:%@", @(_age)];
    return desc;
}
  
@end
