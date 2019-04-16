//
//  Colleague.m
//  ColleaguesTableView
//
//  Created by JETS Mobil Lab -  on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Colleague.h"
#import "Colleague.h"

@implementation Colleague


-(id) initWithName : (NSString *)name : (NSString *)phone : (int) age : (NSString *)email :(NSString *)address{
    self=[super init];
    if(self)
    {
        [self setName : name];
        [self setPhone : phone];
        [self setEmail : email];
        [self setAge : age];
        [self setAddress : address];
        
    }
    return self;}
    
@end
