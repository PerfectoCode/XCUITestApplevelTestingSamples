//
//  QuickXCTestDemoUITests.m
//  QuickXCTestDemoUITests
//
//  Created by Dan Maor on 21/06/2017.
//  Copyright © 2017 Dan Maor. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface QuickXCTestDemoUITests : XCTestCase

@end

@implementation QuickXCTestDemoUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    
    [[[XCUIApplication alloc] init] swipeUp];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSample {
    
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    XCUIElement *pressMeButton = [[XCUIApplication alloc] init].buttons[@"Press Me"];
    [pressMeButton tap];
    [pressMeButton tap];
    [pressMeButton tap];
    [pressMeButton tap];
    
    
    
}

- (void)testGood {
    XCUIElement *pressMeButton = [[XCUIApplication alloc] init].buttons[@"Press Me"];
    XCUIElement *mainpagelabelStaticText = [[XCUIApplication alloc] init].staticTexts[@"mainPageLabel"];
    [pressMeButton tap];
    XCTAssert([[mainpagelabelStaticText label] isEqualToString:@"Pressed 1 Times"]);
    [pressMeButton tap];
    [pressMeButton tap];
}
// If you want to use the test without having to filter the tests - COMMENT OUT this test

- (void) testBad {
    XCUIElement *pressMeButton = [[XCUIApplication alloc] init].buttons[@"Press Me"];
    XCUIElement *mainpagelabelStaticText = [[XCUIApplication alloc] init].staticTexts[@"mainPageLabel"];
    [pressMeButton tap];
    XCTAssert([[mainpagelabelStaticText label] isEqualToString:@"Pressed 5 Times"]);
    [pressMeButton tap];
    [pressMeButton tap];
}

@end
