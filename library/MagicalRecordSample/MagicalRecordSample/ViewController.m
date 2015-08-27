//
//  ViewController.m
//  MagicalRecordSample
//
//  Created by eu on 2015/08/27.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import "SampleEntity.h"
#import <MagicalRecord.h>
#import "SampleEntity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [MagicalRecord setupCoreDataStackWithAutoMigratingSqliteStoreNamed:@"database_name.sqlite"];
    
    
    SampleEntity *sampleEntity = [SampleEntity MR_createEntity];
    sampleEntity.name = @"aaaaaa";
    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreAndWait];
    
    NSNumber *count = [SampleEntity MR_numberOfEntities];
    NSLog(@"%@", count);

    NSArray *samples = [SampleEntity MR_findAll];
    NSInteger count2 = [samples count];
    NSLog(@"%zd", count2);

    SampleEntity *sampleEntity2 = [SampleEntity MR_findFirstByAttribute:@"name" withValue:@"aaaaaa"];
    NSLog(@"%@", sampleEntity2.name);
    

    [MagicalRecord cleanUp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
