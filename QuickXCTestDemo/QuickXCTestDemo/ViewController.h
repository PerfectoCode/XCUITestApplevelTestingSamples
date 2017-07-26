//
//  ViewController.h
//  QuickXCTestDemo
//
//  Created by Dan Maor on 21/06/2017.
//  Copyright © 2017 Dan Maor. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *pressMeButton;
@property (weak, nonatomic) IBOutlet UILabel *mainScreenLabel;
@property (nonatomic) int pressCount;
@end

