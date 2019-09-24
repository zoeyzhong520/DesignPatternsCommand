//
//  CarOffCommand.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "CarOffCommand.h"

@interface CarOffCommand () {
    Car *car;
}

@end

@implementation CarOffCommand

- (instancetype)initWithCar:(Car *)myCar {
    self = [super init];
    if (self) {
        car = myCar;
    }
    return self;
}

- (void)excute {
    [car off];
}

- (void)undo {
    [car on];
}

@end
