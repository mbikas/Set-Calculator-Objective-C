//
//  Employee.m
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (id)initWithName:(NSString *)name andAge:(NSInteger)age
      andEducation: (NSString *)education
{
    personName = name;
    personAge = age;
    employeeEducation = education;
    return self;
}

- (void)print
{
    NSLog(@"Name: %@", personName);
    NSLog(@"Age: %d", personAge);
    NSLog(@"Education: %@", employeeEducation);
}

@end
