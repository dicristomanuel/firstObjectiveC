//
//  NSString+FormattingOptions.m
//  FirstApp
//
//  Created by Manuel Di Cristo on 9/25/16.
//  Copyright © 2016 manueldicristo. All rights reserved.
//

#import "NSString+FormattingOptions.h"

@implementation NSString (FormattingOptions)

-(NSString *)convertWhiteSpace {
    NSString *newString = [self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    return newString;
};

@end
