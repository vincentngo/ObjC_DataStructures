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

@end

@implementation AVLTreeTests

- (void)setUp
{
    [super setUp];


    
    self.node1 = [[AVLNode alloc] initWithElement:[[NSNumber alloc]initWithInt:8]];
    
    self.node2 = [[AVLNode alloc] initWithElement:[[NSNumber alloc] initWithInt:5] withLeft:self.node1 withRight:nil];
    
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testCreatingAVLNode
{
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);

    XCTAssertTrue(self.node1.element != nil);
    XCTAssertTrue(self.node2.left != nil);
    XCTAssertTrue(self.node2.right == nil);
    
}

- (void)testSubTree
{
    
}

@end
