//
//  DoorShutCommand.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "DoorShutCommand.h"

@interface DoorShutCommand () {
    Door *door;
}

@end

@implementation DoorShutCommand

- (instancetype)initWithDoor:(Door *)myDoor {
    if (self = [super init]) {
        door = myDoor;
    }
    return self;
}

- (void)excute {
    [door shut];
}

- (void)undo {
    [door open];
}

@end
