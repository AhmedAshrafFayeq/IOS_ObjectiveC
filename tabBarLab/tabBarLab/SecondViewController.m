//
//  SecondViewController.m
//  tabBarLab
//
//  Created by JETS Mobil Lab -  on 4/16/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"
#import "buttonViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)toHelloViewBtn:(UIButton *)sender {
    buttonViewController *btnVC= [self.storyboard instantiateViewControllerWithIdentifier:@"buttonViewID"];
    
    [self.navigationController pushViewController:btnVC animated:YES];
}
@end
