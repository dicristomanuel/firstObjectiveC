//
//  main.m
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/4/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "MathUtility.h"

// helper function
bool logString(int minutesInAYear) {
    if (minutesInAYear == 525600) {
        return true;
    } else {
        return false;
    }
}

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        // variables - if statements
        int days = 365;
        int hours = 24;
        int minutes = 60;
        int minutesInAYear = days * hours * minutes;
        
        NSDate *today = [NSDate date];
        NSString *message = @"foobar";
        
        if (logString(minutesInAYear)) {
            NSLog(@"There are %i minutes in a year. Today's date is %@ - also %@", minutesInAYear, today, message);
        } else {
            NSLog(@"%i is the wrong number", minutesInAYear);
        }
        
        // Instanciate new custom classes and call methods
        Employee *fred = [[Employee alloc] init];
        MathUtility *math = [[MathUtility alloc] init];
        
        [fred someMethod];
        int result1 = [math timesTen: 2];
        int result2 = [math addNumber: 5 toNumber: 3 ];
        
        bool isHired = [fred hired];
        
        NSLog(@"Is Fred hired? >> %d", isHired);
        NSLog(@"result1 >> %i", result1);
        NSLog(@"result2 >> %i", result2);
        
        // Arrays
        int myArray[] = {1, 10, 100, 1000, 10000};
        NSString *mySecondArray[3] = {@"first", @"second", @"third"};
        
        NSLog(@"At position 3 myArray contains %i", myArray[2]);
        NSLog(@"At position 1 mySecondArray contains >>  %@", mySecondArray[0]);
        
        NSString *outsideString = @"insert this!";
        
        // Using NSArray
        NSArray *newArray = @[outsideString, @"Hello, World!", @42];
        NSLog(@"these are the elements in the array: %@ - %@ - %@", newArray[0], newArray[1], newArray[2]);
        
        NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithObjects: @"one", @"two", nil];

    }
    
    return 0;
}