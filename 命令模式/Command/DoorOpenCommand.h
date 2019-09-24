//
//  DoorOpenCommand.h
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DoorOpenCommand : Command

- (instancetype)initWithDoor:(Door *)myDoor;

@end

NS_ASSUME_NONNULL_END
