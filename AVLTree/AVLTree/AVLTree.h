//
//  AVLTree.h
//  AVLTree
//
//  Created by Ngo, Vincent on 7/7/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AVLNode.h"

#define testTree 1

@interface AVLTree : NSObject

#if testTree
    @property (nonatomic, strong)AVLNode *root;
#endif

- (id)findElementWithElement : (id)element;
- (BOOL) insertElementWithElement : (id)element;
- (BOOL) removeElementWithElement : (id)element;

- (id) findMin;
- (id) findMax;

- (BOOL) isEmpty;
- (BOOL) isEqual:(id)object;






@end
