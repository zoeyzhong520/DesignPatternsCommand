//
//  DoorOpenCommand.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "DoorOpenCommand.h"

@interface DoorOpenCommand () {
    Door *door;
}

@end

@implementation DoorOpenCommand

- (instancetype)initWithDoor:(Door *)myDoor {
    if (self == [super init]) {
        door = myDoor;
    }
    return self;
}

- (void)excute {
    [door open];
}

- (void)undo {
    [door shut];
}

@end
