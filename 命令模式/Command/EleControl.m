//
//  EleControl.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "EleControl.h"

@interface EleControl () {
    Command *undoCommand;
}

@property (nonatomic, strong) NSMutableArray *onCommands;
@property (nonatomic, strong) NSMutableArray *offCommands;

@end

@implementation EleControl

- (instancetype)initWithCommandCount:(NSInteger)count {
    if (self == [super init]) {
        for (int i = 0; i < count; i ++) {
            [self.onCommands addObject:[NSNull null]];
            [self.offCommands addObject:[NSNull null]];
        }
    }
    return self;
}

- (void)setupCommand:(NSInteger)index onCommand:(Command *)onCommand offCommand:(Command *)offCommand {
    self.onCommands[index] = onCommand;
    self.offCommands[index] = offCommand;
}

- (void)controlPressedOn:(NSInteger)index {
    Command *cmd = [self.onCommands objectAtIndex:index];
    [cmd excute];
    undoCommand = cmd;
}

- (void)controlPressedOff:(NSInteger)index {
    Command *cmd = [self.offCommands objectAtIndex:index];
    [cmd excute];
    undoCommand = cmd;
}

- (void)controlPressedUndo {
    [undoCommand undo];
}

#pragma mark getter & setter
- (NSMutableArray *)onCommands {
    if (!_onCommands) {
        _onCommands = [[NSMutableArray alloc] init];
    }
    return _onCommands;
}

- (NSMutableArray *)offCommands {
    if (!_offCommands) {
        _offCommands = [[NSMutableArray alloc] init];
    }
    return _offCommands;
}

@end
