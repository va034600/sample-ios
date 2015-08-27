//
//  SampleEntity.h
//  MagicalRecordSample
//
//  Created by eu on 2015/08/27.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SampleEntity : NSManagedObject

@property (nonatomic, retain) NSNumber * identifer;
@property (nonatomic, retain) NSString * name;

@end
