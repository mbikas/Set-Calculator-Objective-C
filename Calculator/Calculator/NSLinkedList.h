//
//  NSLinkedList.h
//  Calculator
//
//  Created by Bikas on 11/14/14.
//
//  some of the code of this LinkedList implementaion is taken from the following link:
//  https://github.com/mschettler/CKLinkedList
//


#import <Foundation/Foundation.h>

typedef struct LNode LNode;

struct LNode {
    int obj;
    LNode *next;
    LNode *prev;
};

@interface NSLinkedList : NSObject {

    @public LNode *first;
    @public LNode *last;
    unsigned int size;
    
}

- (id)init;                                 // init an empty list

- (void)pushBack:(int)anObject;              // add an object to back of list
- (void)pushFront:(int)anObject;             // add an object to front of list
- (void)addObject:(int)anObject;             // same as pushBack

- (BOOL)removeObjectEqualTo:(int)anObject;   // removes object equal to anObject, returns (YES) on success
- (void)removeAllObjects;                   // clear out the list
- (BOOL)containsObject:(int)anObject;        // (YES) if passed object is in the list, (NO) otherwise
- (int)count;                               // how many objects are stored
- (void)removeNode:(LNode *)aNode;          // remove a given node


- (id)objectAtIndex:(int)inidx;

@property (readonly) LNode *first;
@property (readonly) LNode *last;

@end

LNode * LNodeMake(int obj, LNode *next, LNode *prev);    // convenience method for creating a LNode
