//
//  Employee.h
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/5/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;

-(void) someMethod;


@end
