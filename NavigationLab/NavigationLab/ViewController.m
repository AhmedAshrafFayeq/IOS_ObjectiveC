//
//  ViewController.m
//  NavigationLab
//
//  Created by JETS Mobil Lab -  on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)nextBtn:(UIButton *)sender {
    SecondViewController *secondVC= [self.storyboard instantiateViewControllerWithIdentifier:@"secondView"];
    secondVC.labeltxt=_txtfield.text;
    secondVC.clearProtocol=self;
    [self.navigationController pushViewController:secondVC animated:NO];
    
}
-(void) clear{
    _txtfield.text=@"";
    
}
@end
