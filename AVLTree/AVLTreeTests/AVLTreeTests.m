//
//  AVLTreeTests.m
//  AVLTreeTests
//
//  Created by Ngo, Vincent on 7/7/13.
//  Copyright (c) 2013 Ngo, Vincent. All rights reserved.
//
// Disclaimer: This test unit can only be run on Xcode5

#import <XCTest/XCTest.h>
#import "AVLTree.h"
#import "AVLNode.h"

@interface AVLTreeTests : XCTestCase

@property (nonatomic, strong) AVLNode *node1;
@property (nonatomic, strong) AVLNode *node2;
@property (nonatomic, strong) AVLNode *node3;
@property (nonatomic, strong) AVLNode *node4;
@property (nonatomic, strong) AVLTree *tree;

@end

@implementation AVLTreeTests

- (void)setUp
{
    [super setUp];

    [self buildTree1];
}

- (void) buildTree1
{
    self.node1 = [[AVLNode alloc] initWithElement:[[NSNumber alloc]initWithInt:8]];
    self.node2 = [[AVLNode alloc] initWithElement:[[NSNumber alloc] initWithInt:5]];
    self.node3 = [[AVLNode alloc] initWithElement:[[NSNumber alloc] initWithInt:9]];
    self.node4 = [[AVLNode alloc] initWithElement:[[NSNumber alloc] initWithInt:10]];
    
    self.tree = [[AVLTree alloc]init];
    self.tree.root = self.node1;
    self.tree.root.left = self.node2;
    self.tree.root.right = self.node3;
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testCreatingAVLNode
{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);

//    XCTAssertTrue(self.node1.element != nil);
//    XCTAssertTrue(self.node2.left != nil);
//    XCTAssertTrue(self.node2.right == nil);
    
}

- (void)testEmpty
{
    
}

- (void)testFindMethod
{
    XCTAssertNotNil([self.tree findElementWithElement:[[NSNumber alloc] initWithInt:5]]);
    XCTAssertNil([self.tree findElementWithElement:[[NSNumber alloc] initWithInt:100]]);
    XCTAssertNotNil([self.tree findElementWithElement:[[NSNumber alloc] initWithInt:9]]);
}

- (void)testSubTree
{
    
}

@end
