//
//  ViewController.m
//  validation
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


- (IBAction)NumberBtn:(id)sender {
    NSString *words=_myField.text;
    NSCharacterSet *numberSet=[NSCharacterSet decimalDigitCharacterSet];
    NSString *trimmedString =[words stringByTrimmingCharactersInSet:numberSet];
    if((trimmedString.length ==0)&& (words.length>0))
    {
        _myLabel.text=@"all numbers";
       
    }
    else{
        _myLabel.text=@"not numbers";
        
    }
}

- (IBAction)TextBtn:(id)sender {
    NSString *words=_myField.text;
    NSCharacterSet *set=[[NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"]invertedSet];
    if([words rangeOfCharacterFromSet:set].location !=NSNotFound)
    {
        _myLabel.text=@"not Characters.";
    }
    else{
        _myLabel.text=@"all Characters.";
        
    }
}
@end
