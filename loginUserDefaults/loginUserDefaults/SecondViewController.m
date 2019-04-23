//
//  SecondViewController.m
//  loginUserDefaults
//
//  Created by JETS Mobil Lab -  on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UISwipeGestureRecognizer *rec=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    rec.direction=UITraitEnvironmentLayoutDirectionRightToLeft;
    [self.view addGestureRecognizer:rec];
    
    
    
    self.ball.layer.cornerRadius=25.0;
    
    self.animator=[[UIDynamicAnimator alloc]initWithReferenceView:self.view];
    _flag=false;
    [self animation];
    
    
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
-(void) next{
    
    ViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"one"];
    [self setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondVC animated:YES completion:nil];
}

-(void) animation{
    UIGravityBehavior *gravity=[[UIGravityBehavior alloc]initWithItems:@[_ball,_label]];
    [_animator addBehavior:gravity];
    UICollisionBehavior *collision=[[UICollisionBehavior alloc]initWithItems:@[_ball,_label]];
    collision.collisionDelegate=self;
    [collision setTranslatesReferenceBoundsIntoBoundary:YES];
    [_animator addBehavior:collision];
    
    UIDynamicItemBehavior *item=[[UIDynamicItemBehavior alloc]initWithItems:@[_ball,_label]];
    item.elasticity=0.75;
    item.resistance=0.5;
    [_animator addBehavior:item];
    
}
-(void) collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item1 withItem:(id<UIDynamicItem>)item2
{
    if(_flag){
        _flag=false;
        _ball.layer.backgroundColor=[UIColor redColor].CGColor;
    }
    else{
        _flag=true;
        _ball.layer.backgroundColor=[UIColor blueColor].CGColor;
    }
}


@end
