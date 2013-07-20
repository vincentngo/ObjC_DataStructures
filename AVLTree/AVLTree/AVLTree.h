//
//  AVLTree.h
//  AVLTree
//
//  Created by Ngo, Vincent on 7/7/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVLNode.h"

@interface AVLTree : NSObject

@property (nonatomic, strong)AVLNode *root;

- (id)findElementWithElement : (id)element;
- (BOOL) insertElement;
- (BOOL) removeElement;

- (AVLNode *) findMinWithAVLTree: (AVLNode *)node;
- (AVLNode *) findMaxWithAVLTree: (AVLNode *)node;


- (BOOL) isEmpty;
- (BOOL) isEqual:(id)object;



//We can use NSCompareResult

//init

//insert

//removeByKey


//balance
//rotateRightChildonce
//rotateLeftChildOnce

//find method
//find max method
//find min


//inOrderTraversals
//Preordertraversal




@end
