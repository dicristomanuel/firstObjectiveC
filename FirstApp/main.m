//
//  main.m
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/4/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

bool logString(int minutesInAYear) {
    if (minutesInAYear == 525600) {
        return true;
    } else {
        return false;
    }
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        int days = 365;
        int hours = 24;
        int minutes = 60;
        int minutesInAYear = days * hours * minutes;

        NSString *message = @"foobar";
        NSDate *today = [NSDate date];
        
        Employee *fred = [[Employee alloc] init];
        
        [fred someMethod];
        
        if (logString(minutesInAYear)) {
            NSLog(@"There are %i minutes in a year. Today's date is %@ - also %@", minutesInAYear, today, message);
        } else {
            NSLog(@"%i is the wrong number", minutesInAYear);
        }
    }
    return 0;
}