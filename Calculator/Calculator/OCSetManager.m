//
//  OCSetManager.m
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "OCSetManager.h"

@implementation OCSetManager

- (id)init
{
    if( self = [super init] )
    {
        //if (a == (id)[NSNull null] )
        a = [[NSMutableArray alloc] init];
        b = [[NSMutableArray alloc] init];
    }
    return self;
}


//the current instances of sets A and B are discarded.
//This widget creates two instances of class OCSetManager to be the new A and B sets.
//Both sets will be initially empty.
- (id) startOCManager{
    
    [a removeAllObjects];
    [b removeAllObjects];
    return [self init];
}

//Copies all the elements from A to B. The previous content of B is lost.
//The content of A is not affected.
- (SetManager*)save{
    
    [b removeAllObjects];
    b = [NSMutableArray arrayWithArray:a];
    return self;
}

///////////////////////////////////////////////////////////
//Adds the given NSInteger to A.
//if success 1 will be returned
//if duplicate 2
// -1 is returned in case of error
- (int) addElement:(int) element{
    
    bool found = false;
    for (int i=0;i<[self sizeA]; i++) {
        int item = [[a objectAtIndex:i] intValue];
        if ( item == element) {
            found = true;
            return 2;
        }
    }
    if(found == false)
    {
        [a addObject:[NSNumber numberWithInt:element]];
        return 1;
    }
    return -1;
}

//Removes the given element from A
//return 1 is remove is successful -1 otherwise
- (int) removeElement:(int) element{
    
    for (int i=0;i<[a count]; i++) {
        int item = [[a objectAtIndex:i] intValue];
        if ( item == element) {
            [a removeObjectAtIndex:i];
            return 1;
        }
    }
    return -1;
}

//returns  the element at position index in set A.
// -1 in case of invalid index
- (int)elementAt:(int)index{
    
    if([self sizeA] <=0) return -1;
    if(index >= [self sizeA]) return -1;
    
    return [[a objectAtIndex:index] intValue];
}

//display the element of set X
- (NSString *) displayX{
    
    /*
    for (NSString *line in a) {
        NSLog([NSString stringWithFormat:@"A line: %@", line]);
    }
    */
    return [[a valueForKey:@"description"] componentsJoinedByString:@" "];
}

//display the element of set Y
- (NSString *) displayY{
    
    /*
    for (NSString *line in b) {
        // Results from NSLog are in the Console
        NSLog([NSString stringWithFormat:@"B line: %@", line]);
    }
    */
    return [[b valueForKey:@"description"] componentsJoinedByString:@" "];
}


@end
