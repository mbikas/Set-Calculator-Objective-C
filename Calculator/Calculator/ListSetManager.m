//
//  ListSetManager.m
//  Calculator
//
//  Created by Bikas on 11/14/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "ListSetManager.h"
#import "NSLinkedList.h"

@implementation ListSetManager

- (id)init
{
    if( self = [super init] )
    {
        a = [[NSLinkedList alloc] init];
        b = [[NSLinkedList alloc] init];
    }
    
    return self;
}


//the current instances of sets A and B are discarded.
//This widget creates two instances of class ListSetManager to be the new A and B sets.
//Both sets will be initially empty.
- (id) startListManager{
    
    [a removeAllObjects];
    [b removeAllObjects];
    return [self init];
}

//Copies all the elements from A to B. The previous content of B is lost.
//The content of A is not affected.
- (SetManager*)save{
    
    [b removeAllObjects];
    NSLinkedList* listB = b;
    for (int i=0;i<[a count]; i++) {
        [listB addObject: [[a objectAtIndex:i] intValue]];
    }
    return self;
}


///////////////////////////////////////////////////////////
//Adds the given NSInteger to A.
//if success 1 will be returned
//if duplicate 2
// -1 is returned in case of error
- (int) addElement:(int) element{
    
    bool found = false;
    NSLinkedList* list = a;
    for (int i=0;i<[self sizeA]; i++) {
        
        if( [list containsObject:element] == YES)
        {
            found = true;
            return 2;
        }
    }
    if(found == false)
    {
        [list addObject: element];
        return 1;
    }
    return -1;
}


//Removes the given element from A
//return 1 is remove is successful -1 otherwise
- (int) removeElement:(int) element{
    
    NSLinkedList* list = a;
    for (int i=0;i<[a count]; i++) {
        int item = [[a objectAtIndex:i] intValue];
        //int item = [list objectAtIndex: i];
        if ( item == element) {
            [list removeObjectEqualTo: item];
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
    //return [list objectAtIndex:index];
    return [[a objectAtIndex:index] intValue];
}

//display the element of set X
- (NSString *) displayX{
    
    NSMutableString* aText = [NSMutableString string];
    //[aText appendString: @"A: "];
    
    // loop through list, forward
    NSLinkedList * list = a;
    for (LNode *n = list->first; n; n=n->next) {
        int value = n->obj;
        //NSLog(@"A: %@", theString);
        [aText appendString:[NSString stringWithFormat:@"%d ",value]];
    }
    return aText;
}

//display the element of set Y
- (NSString *) displayY{
    NSMutableString* bText = [NSMutableString string];
    //[bText appendString: @"B: "];
    
    // loop through list, forward
    NSLinkedList * list = b;
    for (LNode *n = list->first; n; n=n->next) {
        int value = n->obj;
        //NSLog(@"B: %@", theString);
        [bText appendString:[NSString stringWithFormat:@"%d ",value]];
    }
    return bText;
}


@end
