//
//  Person.h
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

{
    NSString *personName;
    NSInteger personAge;
}

- (id)initWithName:(NSString *)name andAge:(NSInteger)age;
- (void)print;
@end
