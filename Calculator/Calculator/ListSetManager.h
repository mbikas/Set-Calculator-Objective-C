//
//  ListSetManager.h
//  Calculator
//
//  Created by Bikas on 11/14/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "SetManager.h"

@interface ListSetManager : SetManager

- (id)init;

//the current instances of sets A and B are discarded.
//This widget creates two instances of class ListSetManager to be the new A and B sets.
//Both sets will be initially empty.
- (id) startListManager;

//This operation copies the A set into B. The previous content of B is lost.
//The content of A is not affected.
- (SetManager*)save;

//adds the given element in A
- (int) addElement:(int) element;

//This operation allows a user to remove a number from A.
//No action is taken if the number in question is not in the set.
//Otherwise, the number passed as an argument is removed from A.
- (int) removeElement:(int) element;

//returns  the element at position index in set A
- (int)elementAt:(int)index;

//display the element of set X
- (NSString *) displayX;

//display the element of set Y
- (NSString *) displayY;

@end
