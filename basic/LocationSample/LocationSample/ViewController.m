//
//  ViewController.m
//  LocationSample
//
//  Created by eu on 2015/08/25.
//  Copyright (c) 2015年 eu. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()<CLLocationManagerDelegate>
@property (nonatomic, retain) CLLocationManager *locationManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    CLLocation* location = [locations lastObject];
    NSLog(@"緯度 %+.6f, 経度 %+.6f\n", location.coordinate.latitude, location.coordinate.longitude);
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
    NSLog(@"error");
}

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    NSLog(@"status:%d", status);

    //ユーザが位置情報の使用を許可していない
    if(status == kCLAuthorizationStatusNotDetermined){
        [self.locationManager requestAlwaysAuthorization];
    }
}
@end
