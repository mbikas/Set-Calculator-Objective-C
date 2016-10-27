//
//  main.m
//  Calculator
//
//  Created by Bikas on 11/11/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
#import "Employee.h"

#import "AppDelegate.h"
#import "SetManager.h"
#import "OCSetManager.h"
#import "ListSetManager.h"
#import "NSLinkedList.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        
        /*
        //Testing List Set Manager
        NSLog(@"Testing ListSETMANAGER");
        id setManager;
        
        
        setManager = [[ListSetManager alloc]init];
        [setManager addElement: 100];
        [setManager addElement: 200];
        [setManager addElement: 300];
        
        NSLog([setManager displayX]);
        
        int x = [setManager sizeA];
        NSLog([NSString stringWithFormat:@"Size of A is: %d", x]);
         
        int element  = [setManager elementAt: 1];
        NSLog([NSString stringWithFormat:@"Element at 0: %d", element]);
        
        int status = [setManager removeElement:200];
        NSLog([setManager displayX]);
        
        //[setManager clear];
        //NSLog([setManager displayX]);
        [setManager save];
        NSLog([setManager displayY]);
        [setManager removeElement:100];
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        if( [setManager isMember:300] == true)
            NSLog(@"MEMBER");
        else     NSLog(@"NOT MEMBER");
            
        [setManager removeElement:300];
        [setManager addElement:500];
        [setManager addElement:600];
        [setManager Union];
        NSLog(@"UNION");
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        [setManager swap];
        NSLog(@"SWAP");
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
         setManager = [ setManager clear];
         x = [setManager getSize];
         NSLog(@"CLEAR");
         NSLog([setManager displayX]);
         NSLog([setManager displayY]);
         */
        /////////////////////////////////////////
         
        
        
        
        /*
         //Testing OC Set Manager
         NSLog(@"Testing OCSETMANAGER");
         id setManager;
         setManager = [[OCSetManager alloc]init];
        [setManager addElement: 100];
        [setManager addElement: 200];
        [setManager addElement: 200];
        //[setManager remove: 200];
        [setManager removeElement: 300];
        [setManager save];
        [setManager removeElement: 100];
        
        
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        
        [setManager swap];
        
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        [setManager addElement: 500];
        [setManager addElement: 600];
        [setManager Union];
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        
        setManager = [setManager startOCManager];
        [setManager addElement: 100];
        [setManager addElement: 200];
        [setManager addElement: 200];
        //[setManager remove: 200];
        [setManager removeElement: 300];
        [setManager save];
        [setManager removeElement: 100];
        
        
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        
        [setManager swap];
        
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);
        
        [setManager addElement: 500];
        [setManager addElement: 600];
        [setManager Union];
        NSLog([setManager displayX]);
        NSLog([setManager displayY]);

        
        //setManager = [ setManager clear];
        //x = [setManager getSize];
        /////////////////////////////////////////
        */
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
    }
}
