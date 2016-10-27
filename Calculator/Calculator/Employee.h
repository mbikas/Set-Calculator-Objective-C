//
//  Employee.h
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "Person.h"

@interface Employee : Person
{
    NSString *employeeEducation;
}

- (id)initWithName:(NSString *)name andAge:(NSInteger)age
      andEducation:(NSString *)education;
- (void)print;

@end
