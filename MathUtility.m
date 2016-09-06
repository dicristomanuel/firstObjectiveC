//
//  MathUtility.m
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/5/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import "MathUtility.h"

@implementation MathUtility

-(int) timesTen:(int)number {
    NSLog(@"The number passed is %i", number);
    return number * 10;
};


-(int) addNumber:(int)a toNumber:(int)b {
    NSLog(@"The arguments passed are %i and %i", a, b);
    return a + b;
}

@end

