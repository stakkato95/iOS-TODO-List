//
//  TODOItem.h
//  TODOList
//
//  Created by Artsiom Kaliaha on 10/08/15.
//  Copyright (c) 2015 Artsiom Kaliaha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TODOItem : NSObject

@property NSString *name;
@property BOOL isCompleted;
@property (readonly) NSDate *creationDate;

@end
