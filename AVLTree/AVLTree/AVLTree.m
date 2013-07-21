//
//  AVLTree.m
//  AVLTree
//
//  Created by Ngo, Vincent on 7/7/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import "AVLTree.h"

#define IMBALANCE_THRESHOLD = 1;

@interface AVLTree()

#if !testTree
    @property (nonatomic, strong)AVLNode *root;
#endif

@end

@implementation AVLTree

- (id) init
{
    self = [super init];
    
    if ( self )
    {
        self.root = nil;
    }
    return self;
}

#pragma mark - finding element in AVLTree

/**
 *  Will return a reference to the specified data element in the AVLTree, or nil if the element is not present. 
 *  \param element the element you want to find
 *  \return the element in the tree if found, or nil if the element is not found.
 */
- (id)findElementWithElement : (id)element
{
    return [self findElementWithElement:element withAVLTree:self.root];
}


/**
 *  Helper method that returns the node that may have the specified element. 
 *  \param element, the element to find within the AVLTree
 *  \param node, the subtree to search
 *  \return the node that has the specified element or nil if not found.
 */
- (AVLNode *)findElementWithElement : (id)element withAVLTree: (AVLNode *)node
{
    if (node == nil) return nil;
    
    NSComparisonResult compareResult = [node compareElementWith:element];
    
    //Element is less than node's element.
    if (compareResult == NSOrderedAscending)
    {
        return [self findElementWithElement:element withAVLTree:node.left];
    }
    //Element is greater than node's element.
    else if (compareResult == NSOrderedDescending)
    {
        return [self findElementWithElement:element withAVLTree:node.right];
    }
    else //Found a match.
    {
        return node.element;
    }
}

#pragma mark - inserting and deleting in AVLTree

- (BOOL) insertElementWithElement : (id)element
{
    if (element == nil) return NO;
    
    @try {
        self.root = [self insertElementWithElement:element withAVLTree:self.root];
    }
    @catch (NSException *exception) {
        return NO;
    }
}

- (AVLNode *) insertElementWithElement : (id)element withAVLTree: (AVLNode *)node
{
    if (node == nil)
    {
        return [[AVLNode alloc]initWithElement:element];
    }
    
    NSComparisonResult compareResult = [node compareElementWith: element];
    
    if (compareResult == NSOrderedAscending)
    {
        node.left = [self insertElementWithElement:element withAVLTree: node.left];
    }
    else if (compareResult == NSOrderedDescending)
    {
        node.right = [self insertElementWithElement:element withAVLTree: node.right];
    }
    else
    {
        [NSException raise:@"Element: " format:@"%@, is already in subTree", element];
    }
    
    return [self balanceAVLTree: node];
}

- (BOOL) removeElementWithElement : (id)element
{
    //TODO: removeElementWithElement
    return [self removeElementWithElement: element withAVLTree: self.root];
}

- (BOOL) removeElementWithElement:(id)element withAVLTree: (AVLNode *)node
{
    //TODO: helper method removeElementWithElement
    return YES;
}


#pragma mark - AVL rotations

//TODO: do test cases for rotations

- (AVLNode *) balanceAVLTree: (AVLNode *)tree
{
    //TODO: balanceAVLTree
    return nil;
}

- (AVLNode *) rotateWithLeftChild: (AVLNode *)tree
{
    AVLNode *newParentNode = tree.left;
    tree.left = newParentNode.right;
    newParentNode.right = tree;
    
    tree.height = MAX(tree.left.height, tree.right.height) + 1;
    newParentNode.height = MAX(newParentNode.left.height, tree.height) + 1;
    
    return newParentNode;
}


- (AVLNode *) rotateWithRightChild: (AVLNode *)tree
{
    AVLNode *newParentNode = tree.right;
    tree.right = newParentNode.left;
    newParentNode.left = tree;
    
    tree.height = MAX(tree.left.height, tree.right.height) + 1;
    newParentNode.height = MAX(newParentNode.right.height, tree.height) + 1;
    
    return newParentNode;
}

//LEFT RIGHT
- (AVLNode *) doubleRotateWithLeftChild: (AVLNode *)tree
{
    tree.left = [self rotateWithRightChild: tree];
    
    return [self rotateWithLeftChild: tree];
}

//RIGHT LEFT
- (AVLNode *) doubleRotateWithRightChild: (AVLNode *)tree
{
    tree.right = [self rotateWithLeftChild: tree.right];
    
    return [self rotateWithRightChild: tree];
}

#pragma mark - Utility

- (id) findMin
{
    AVLNode *node = [self findMinWithAVLTree: self.root];
    
    return (node == nil) ? nil : node.element;
}

- (id) findMax
{
    AVLNode *node = [self findMaxWithAVLTree: self.root];
    
    return (node == nil) ? nil : node.element;
}

- (AVLNode *) findMinWithAVLTree: (AVLNode *)node
{
    if (node == nil) return nil;
    
    return (node.left != nil) ? [self findMinWithAVLTree: node.left] : node;
}

- (AVLNode *) findMaxWithAVLTree: (AVLNode *)node
{
    if (node == nil) return nil;
    
    return (node.right != nil) ? [self findMaxWithAVLTree: node.right] : node;
}

- (BOOL) isEqual:(id)object
{
    //TODO: isEqual;
    return NO;
}

- (BOOL) isEmpty
{
    return (self.root == nil);
}

//UIKitFrameworks has built support to compare
//NSDate, NSString, NSData, NSNumber, and few others,
//anything that can be compared equal, >, M
//For sorting and searching

//Insertion

//alpha's two subtrees heights may only differby one.
//Violation may occur in four case:

//insertion
//insertion of left subtree of the left child of alpha
// insertion into the right subtree of the left child of alpha
// an insertion into the left subtree of the right child of alpha
// insertion into the right subtree of the right child of alpha

//single and double rotations

//Interesting article on different ways to sort articles using selectors
//http://iphone2020.wordpress.com/2010/12/30/how-to-compare-objects-of-your-custom-classes/






@end
