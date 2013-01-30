//
//  ViewController.m
//  RetractKeyboard
//
//  Created by NFJ on 13-1-30.
//  Copyright (c) 2013年 NiuFJ. All rights reserved.
//

#import "ViewController.h"
#import "NKeyboardView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [NKeyboardView addToTextView:self.textField withBounds:CGRectMake(320-45, 0, 40, 25)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
