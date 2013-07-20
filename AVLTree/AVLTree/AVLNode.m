//
//  AVLNode.m
//  AVLTree
//
//  Created by Ngo, Vincent on 7/8/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//

#import "AVLNode.h"

@implementation AVLNode

- (void) dealloc
{
    self.element = nil;
    self.left = nil;
    self.right = nil;
    self.height = 0;
}

-(id) initWithElement:(id)element
{
    return [self initWithElement:element withLeft:nil withRight:nil];
}

-(id) initWithElement:(id)element withLeft:(AVLNode *)left withRight:(AVLNode *)right
{
    self = [super init];
    if ( self )
    {
        self.element = element;
        self.left = left;
        self.right = right;
        self.height = 0;
    }
    
    return self;
}

-(NSInteger) getHeightWithNode:(AVLNode *)node
{
    return (node == nil) ? -1 : node.height;
}

-(NSComparisonResult) compareElementWith:(id) element
{
    if ([element integerValue] < [self.element integerValue])
    {
        return NSOrderedAscending;
    }
    else if ([element integerValue] > [self.element integerValue])
    {
        return NSOrderedDescending;
    }
    else
    {
        return NSOrderedSame;
    }
}


@end
