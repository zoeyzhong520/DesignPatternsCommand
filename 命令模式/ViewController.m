//
//  ViewController.m
//  命令模式
//
//  Created by zhifu360 on 2019/9/24.
//  Copyright © 2019 ZZJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Car *car = [[Car alloc] init];
    Command *carOnCommand = [[CarOnCommand alloc] initWithCar:car];
    Command *carOffCommand = [[CarOffCommand alloc] initWithCar:car];
    
    Door *door = [[Door alloc] init];
    Command *doorOpenCommand = [[DoorOpenCommand alloc] initWithDoor:door];
    Command *doorShutCommand = [[DoorShutCommand alloc] initWithDoor:door];
    
    EleControl *control = [[EleControl alloc] initWithCommandCount:2];
    [control setupCommand:0 onCommand:carOnCommand offCommand:carOffCommand];
    [control setupCommand:1 onCommand:doorOpenCommand offCommand:doorShutCommand];
    [control controlPressedOn:0];
    [control controlPressedOff:1];
    [control controlPressedUndo];
}


@end
