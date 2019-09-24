//
//  CarOnCommand.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "CarOnCommand.h"

@interface CarOnCommand () {
    Car *car;
}

@end

@implementation CarOnCommand

- (instancetype)initWithCar:(Car *)myCar {
    self = [super init];
    if (self) {
        car = myCar;
    }
    return self;
}

- (void)excute {
    [car on];
}

- (void)undo {
    [car off];
}

@end
