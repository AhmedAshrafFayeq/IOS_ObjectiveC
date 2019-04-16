//
//  ViewController.m
//  ColleaguesTableView
//
//  Created by JETS Mobil Lab -  on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _name.text=[_colleagueObject name];
    [_age setText:[NSString stringWithFormat:@"%d",[_colleagueObject age]]];
    _phone.text=[_colleagueObject phone];
    _address.text=[_colleagueObject address];
    _email.text=[_colleagueObject email];
    
}


@end
