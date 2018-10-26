//
//  WCDBModel+WCTTableCoding.h
//  WCDBDemo
//
//  Created by wuyonglin on 2018/10/26.
//  Copyright © 2018年 IceCreamWu. All rights reserved.
//

#import "WCDBModel.h"
#import <WCDB/WCDB.h>

@interface WCDBModel (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(name)
WCDB_PROPERTY(age)

@end
