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
#import "NSString+FormattingOptions.h"

// helper function
bool logString(int minutesInAYear) {
    if (minutesInAYear == 525600) {
        return true;
    } else {
        return false;
    }
}
// =========

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
        fred.name = @"Fred";
        
        NSLog(@"Employee name >> %@", fred.name);
        NSLog(@"Is Fred hired? >> %d", isHired);
        NSLog(@"result1 >> %i", result1);
        NSLog(@"result2 >> %i", result2);
        NSLog(@"Employee class: %@", fred);
        
        
        // Arrays
        int myArray[] = {1, 10, 100, 1000, 10000};
        NSString *mySecondArray[3] = {@"first", @"second", @"third"};
        
        NSLog(@"At position 3 myArray contains %i", myArray[2]);
        NSLog(@"At position 1 mySecondArray contains >>  %@", mySecondArray[0]);
        
        NSString *outsideString = @"insert this!";
        
        
        // Using NSArray
        NSArray *newArray = @[outsideString, @"Hello, World!", @42];
        NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithObjects: @"one", @"two", nil];
        NSLog(@"these are the elements in the arrays: %@ - %@ - %@", newArray[0], newArray[1], mutableArray[1]);
        
        
        
        // Using NSDictionary
        NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] initWithObjectsAndKeys:
                                                  @"California", @"CA",
                                                  @"Illinois", @"IL",
                                                  @"Michigan", @"MI",
                                                  nil];
        
        NSDictionary *myDictionary = @{ @"a": @1, @"b": @2, @"c": @3 };
        NSLog(@"these the values of myDictionary: %@ - %@ - %@", myDictionary[@"a"], myDictionary[@"b"], mutableDictionary[@"CA"]);
        
        
        // For In loops
        NSString *soundPath = @"/System/Library/Sounds";
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        // grab all the files into the directory
        NSArray *soundFiles = [fileManager subpathsAtPath: soundPath];
        // for loop
        for (NSString *file in soundFiles) {
            NSLog(@"sound file > %@", file);
        }
        
        
        
        // File management
        NSFileManager *fileManagement = [NSFileManager defaultManager];
        NSString *path = @"/Users/manueldicristo/Downloads/pigions.psd";
        
        if ([fileManagement fileExistsAtPath:path]) {
            NSLog(@"File exists");
        } else {
            NSLog(@"File doesn't exist");
            return 1;
        }
        
        NSDictionary *attributes = [fileManagement attributesOfItemAtPath:path error:nil];
        
        for (NSString *attribute in attributes) {
            NSLog(@">> %@: %@ <<", attribute, attributes[attribute]);
        }
        
        // Refactor path object
        NSString *homeDirectory = NSHomeDirectory();
        NSString *desktopPath = [homeDirectory stringByAppendingPathComponent:@"Desktop"];
        NSString *folderPath = [desktopPath stringByAppendingPathComponent:@"UI"];
        
        NSLog(@"Folder path: %@", folderPath);
        
        
        // Category - add methods to class
        NSString *stringExample = @"Convert this string please";
        NSString *noSpace = [stringExample convertWhiteSpace];
        
        NSLog(@"%@", noSpace);
        
    }
    
    return 0;
}