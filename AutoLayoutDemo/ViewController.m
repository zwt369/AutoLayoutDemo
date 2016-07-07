//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by Tony Zhang on 16/7/7.
//  Copyright © 2016年 Tony Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *autoSwitch;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *blueView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *distance;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
   
}


- (IBAction)switchAction:(id)sender {
    
    if (self.autoSwitch.isOn) {
        self.distance.constant = 20.0;
        self.blueView.priority = UILayoutPriorityDefaultHigh+1;
    } else {
        self.distance.constant = self.view.frame.size.width;
        self.blueView.priority = UILayoutPriorityDefaultHigh-1;
    }
    
    [self.view layoutIfNeeded];
    [UIView animateWithDuration:1.0 animations:^{
        // Make all constraint changes here
        [self.view layoutIfNeeded];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
