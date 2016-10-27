//
//  Person.m
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name andAge:(NSInteger)age{
    personName = name;
    personAge = age;
    return self;
}

- (void)print{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %d", personAge);
}

@end