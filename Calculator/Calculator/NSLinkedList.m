//
//  NSLinkedList.m
//  Calculator
//
//  Created by Bikas on 11/14/14.
//
//  some of the code of this LinkedList implementaion is taken from the following link:
//  https://github.com/mschettler/CKLinkedList
//


#import "NSLinkedList.h"

@implementation NSLinkedList

@synthesize first, last;


- (id)init {
    
    if ((self = [super init]) == nil) return nil;
    
    first = last = nil;
    size = 0;
    return self;
}




- (void)pushBack:(int)anObject {
    
    LNode *n = LNodeMake(anObject, nil, last);
    
    if (size == 0) {
        first = last = n;
    } else {
        last->next = n;
        last = n;
    }
    size++;
    
}


- (void)pushFront:(int)anObject {
    
    
    LNode *n = LNodeMake(anObject, first, nil);
    
    if (size == 0) {
        first = last = n;
    } else {
        first->prev = n;
        first = n;
    }
    size++;
}

- (void)addObject:(int)anObject {
    [self pushBack:anObject];
}


- (id)objectAtIndex:(int)inidx {
    
    if (inidx >= size || inidx < 0) return nil;
    
    LNode *n = nil;
    
    int curridx = 0;
    for (n = first; curridx < inidx; ++curridx) n = n->next;
    return [NSNumber numberWithInteger: n->obj];
}

- (void)removeNode:(LNode *)aNode {
    
    if (size == 0) return;
    
    if (size == 1) {
        // delete first and only
        first = last = nil;
    } else if (aNode->prev == nil) {
        // delete first of many
        first = first->next;
        first->prev = nil;
    } else if (aNode->next == nil) {
        // delete last
        last = last->prev;
        last->next = nil;
    } else {
        // delete in the middle
        LNode *tmp = aNode->prev;
        tmp->next = aNode->next;
        tmp = aNode->next;
        tmp->prev = aNode->prev;
    }
    free(aNode);
    size--;
    
}


- (BOOL)removeObjectEqualTo:(int)anObject {
    
    LNode *n = nil;
    for (n = first; n; n=n->next) {
        if (n->obj == anObject) {
            [self removeNode:n];
            return YES;
        }
    }
    
    return NO;
    
}


- (void)removeAllObjects {
    
    LNode *n = first;
    
    while (n) {
        LNode *next = n->next;
        n->obj = 0;
        free(n);
        n = next;
    }
    first = last = nil;
    size = 0;
}




- (int)count  { return size; }


- (BOOL)containsObject:(int)anObject {
    
    LNode *n = nil;
    
    for (n = first; n; n=n->next) {
        if (n->obj == anObject) return YES;
    }
    return NO;
    
}

@end

LNode * LNodeMake(int obj, LNode *next, LNode *prev) {
    LNode *n = malloc(sizeof(LNode));
    n->next = next;
    n->prev = prev;
    n->obj = obj;
    return n;
};