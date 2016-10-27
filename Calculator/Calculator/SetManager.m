//
//  SetManager.m
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "SetManager.h"
#import "NSLinkedList.h"

@implementation SetManager


//chechs if the given elememt is a member of A or not
- (bool) isMember:(int)element{
   
    
    for (int i=0;i<[a count]; i++) {
        if ( [[a objectAtIndex:i] intValue] == element)
            return true;
    }
    return false;
    
}

//  swaps elements of A and B.
//  A will receive the previous B set and vice versa.
-(SetManager *) swap{
    
    id temp = a;
    a = b;
    b = temp;
    
    /*
     if ([a isMemberOfClass:[NSLinkedList class]]){
     NSLinkedList *temp = [[NSLinkedList alloc] init];
     NSLinkedList *list = a;
     for (LNode *n = list->first; n; n=n->next) {
     [temp addObject:(n->obj)];
     }
     [self clear];
     [self Union];
     [b removeAllObjects];
     NSLinkedList* listB = b;
     for (LNode *n = temp->first; n; n=n->next) {
     [listB addObject:(n->obj)];
     }
     }
     else{
     NSArray *temp = [NSMutableArray arrayWithArray:a];
     [a removeAllObjects];
     a = [NSMutableArray arrayWithArray:b];
     [b removeAllObjects];
     b = [NSMutableArray arrayWithArray:temp];
     }
     */
    
    return self;
}


//This operation computes that set union of sets A and B. The result is stored as set A.
//The previous content of A is lost. B is not modified by this operation.
//  Below implementation works but does not actully follow the OOP convention
//  Tried to make a generic implementation for both OCSetManager and ListSetManager but with no sucess
- (SetManager*) Union
{
    for (int i=0;i<[b count]; i++) {
        int item = [[b objectAtIndex:i] intValue];
        //NSLog([NSString stringWithFormat:@"ITEM: %d", item]);
        if( [self isMember: item] == false){
            if ([a isMemberOfClass:[NSLinkedList class]])
            {
                NSLinkedList* listA = a;
                [listA addObject:item];
            }
            else
            {
                NSMutableArray* temp = a;
                [temp addObject:[NSNumber numberWithInt:item]];
            }
        }
    }
    return self;
}


//All the elemets of A is removed. No new set instances are created.
- (SetManager*) clear{
    
    [a removeAllObjects];
    return self;
}


//returns number of elements in A
- (int)sizeA{
    
    return [a count];
}

/////////////////////////////////////////////////////////////



@end
