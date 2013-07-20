//
//  AVLNode.h
//  AVLTree
//
//  Created by Ngo, Vincent on 7/8/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVLNode : NSObject

@property (nonatomic, strong) id element;
@property (nonatomic, strong) AVLNode *left;
@property (nonatomic, strong) AVLNode *right;
@property (nonatomic, assign) NSUInteger height;

//Constructors
-(id) initWithElement: (id)element;
-(id) initWithElement: (id)element withLeft:(AVLNode *)left withRight:(AVLNode *)right;

//Calculates height of an AVL node
-(NSInteger) getHeightWithNode: (AVLNode *)node;

@end
