//
//  ViewController.m
//  Calculator
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
}


- (IBAction)plusBtn:(UIButton *)sender {
    
    
    if ([[NSString stringWithFormat:@"%f", _txt1.text] isEqualToString:@"nan"] ||
        [[NSString stringWithFormat:@"%f", _txt2.text] isEqualToString:@"nan"])
    {
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
    else{
        double result=_txt1.text.doubleValue + _txt2.text.doubleValue;
        NSString *res=[[NSString alloc] initWithFormat:@"%f",result];
        _resultTxt.text=res;
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
}

- (IBAction)minusBtn:(UIButton *)sender {
    
    if ([[NSString stringWithFormat:@"%f", _txt1.text] isEqualToString:@"nan"] ||
        [[NSString stringWithFormat:@"%f", _txt2.text] isEqualToString:@"nan"])
    {
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
    else{
        double result=_txt1.text.doubleValue - _txt2.text.doubleValue;
        NSString *res=[[NSString alloc] initWithFormat:@"%f",result];
        _resultTxt.text=res;
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
}

- (IBAction)mulBtn:(UIButton *)sender {
    if ([[NSString stringWithFormat:@"%f", _txt1.text] isEqualToString:@"nan"] ||
        [[NSString stringWithFormat:@"%f", _txt2.text] isEqualToString:@"nan"])
    {
        _txt1.text = @" ";
        _txt2.text = @" ";
        
    }
    else{
        double result=_txt1.text.doubleValue * _txt2.text.doubleValue;
        NSString *res=[[NSString alloc] initWithFormat:@"%f",result];
        _resultTxt.text=res;
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
}

- (IBAction)divBtn:(UIButton *)sender {
    if ([[NSString stringWithFormat:@"%f", _txt1.text] isEqualToString:@"nan"] ||
        [[NSString stringWithFormat:@"%f", _txt2.text] isEqualToString:@"nan"] ||
        [[NSString stringWithFormat:@"%i", _txt1.text] isEqualToString:0] ||
        [[NSString stringWithFormat:@"%i", _txt2.text] isEqualToString:0]
        )
    {
        _txt1.text = @" ";
        _txt2.text = @" ";
        
    }
    else{
        double result=_txt1.text.doubleValue / _txt2.text.doubleValue;
        NSString *res=[[NSString alloc] initWithFormat:@"%f",result];
        _resultTxt.text=res;
        _txt1.text = @" ";
        _txt2.text = @" ";
    }
}

@end
