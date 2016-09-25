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

-(NSString *) description {
    NSString *desc = [NSString stringWithFormat:@"Description of the class instance %@ - %d", self.name, self.hired];
    return desc;
};

-(void) someMethod {
    NSLog(@"Executing the method");
}

-(void) dealloc {
    NSLog(@"Automatically called dealloc method");
}

@end
