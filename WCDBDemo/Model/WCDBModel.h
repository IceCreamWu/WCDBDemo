//
//  WCDBModel.h
//  WCDBDemo
//
//  Created by wuyonglin on 2018/10/26.
//  Copyright © 2018年 IceCreamWu. All rights reserved.
//

#import <Foundation/Foundation.h>

#define WCDBModelTName  @"wcdb_model"

@interface WCDBModel : NSObject

@property(nonatomic, retain) NSString *name;
@property(nonatomic, assign) NSInteger age;

@end
