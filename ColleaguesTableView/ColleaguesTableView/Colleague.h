//
//  Colleague.h
//  ColleaguesTableView
//
//  Created by JETS Mobil Lab -  on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

@property NSString *name;
@property NSString *phone;
@property int age;
@property NSString *email;
@property NSString *address;


-(id) initWithName : (NSString *)name : (NSString *)phone : (int) age : (NSString *)email :(NSString *)address;

@end

NS_ASSUME_NONNULL_END
