//
//  ViewController.m
//  day10ios_datepickerassignment
//
//  Created by Student 01 on 15/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIDatePicker *myPicker=[[UIDatePicker alloc]init];
    [myPicker setDate:[NSDate date]];
    [myPicker addTarget:self action:@selector(showDatePicker:) forControlEvents:UIControlEventValueChanged];
    [self.nameText setInputView:myPicker];
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)showDatePicker:(id)sender
{
    UIDatePicker *picker=(UIDatePicker *)self.nameText.inputView;
    self.nameText.text=[NSString stringWithFormat:@"%@",picker.date];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
