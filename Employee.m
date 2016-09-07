//
//  Employee.m
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/5/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (id)init
{
    self = [super init];
    if (self) {
        _hired = true;
    }
    return self;
}

- (id)initWithName:(NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

-(void) someMethod {
    NSLog(@"Executing the method");
}

@end
