//
//  AVLTree.m
//  AVLTree
//
//  Created by Ngo, Vincent on 7/7/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import "AVLTree.h"

@interface AVLTree()

//@property (nonatomic, strong)AVLNode *root;

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

- (BOOL) isEmpty
{
    return (self.root == nil);
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
- (AVLNode *)findElementWithElement : (id)element withAVLTree: (AVLNode *) node
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
