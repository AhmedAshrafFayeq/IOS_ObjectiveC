//
//  ViewController.m
//  CopingText
//
//  Created by JETS Mobil Lab -  on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)myButton:(id)sender {
    _myLabel.text=_myTextField.text;
}
@end
