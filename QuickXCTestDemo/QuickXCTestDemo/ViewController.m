//
//  ViewController.m
//  QuickXCTestDemo
//
//  Created by Dan Maor on 21/06/2017.
//  Copyright © 2017 Dan Maor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pressCount = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressMePressed:(UIButton *)sender {
    self.pressCount++;
    [[self mainScreenLabel]setText:[NSString stringWithFormat:@"Pressed %d Times",self.pressCount]];
}

@end
