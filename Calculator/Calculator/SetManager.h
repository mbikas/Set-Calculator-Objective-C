//
//  SetManager.h
//  Calculator
//
//  Created by Bikas on 11/12/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface SetManager : NSObject{
    
    // Two common set instance variable used in both OCSetManager and ListSetManager
    // These two will be casted to either OCSetManager or ListSetManager based on the subclass
    id a;
    id b;
    
}

//////////////////////////////////////////////////////////
//Common SuperClass SetManager instance methods
-(SetManager *) swap;
- (bool) isMember:(int)element;
- (SetManager*) Union;
/////////////////////////////////////////////


//////////////////////////////////////////////////////////
//The following have same implementaion for both OSSetManager and ListSetManager
//So keeping just one copy of these methods in the superclass rather in both subclass
//////////////////////////////////////////////////////////
- (int)sizeA;                           //returns number of elements in A
- (SetManager*) clear;                  //removes all the elements from A
//////////////////////////////////////////////////////////
    
@end
