//
//  ViewController.m
//  Your Colleagues
//
//  Created by JETS Mobil Lab -  on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

static NSMutableArray *names;
NSUInteger counter=0;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    names=[NSMutableArray arrayWithObjects: @"ahmed" , @"ashraf",@"fayeq",@"fares" , @"sherief",@"mohamed",nil];
    _myLabel.text=[names objectAtIndex: counter];
    
    
}



- (IBAction)nextBtn:(id)sender {
   
    if(counter ==[names count]-1)
        counter=0;
    
    else
        counter++;
    _myLabel.text=[names objectAtIndex:counter];
}

- (IBAction)preBtn:(id)sender {
    if(counter >0)
        counter--;
    else
        counter=[names count]-1;
    _myLabel.text=[names objectAtIndex:counter];
}
@end
