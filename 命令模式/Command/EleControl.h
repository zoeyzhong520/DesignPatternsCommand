//
//  EleControl.h
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EleControl : NSObject

- (instancetype)initWithCommandCount:(NSInteger)count;
- (void)setupCommand:(NSInteger)index onCommand:(Command *)onCommand offCommand:(Command *)offCommand;
- (void)controlPressedOn:(NSInteger)index;
- (void)controlPressedOff:(NSInteger)index;
- (void)controlPressedUndo;

@end

NS_ASSUME_NONNULL_END
