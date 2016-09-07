//
//  Employee.h
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/5/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

-(id) initWithName:(NSString *) name;

@property NSString *name;
@property NSDate *hireDate;
@property int employeeNumber;
@property bool hired;

-(void) someMethod;


@end
