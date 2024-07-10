//
//  MovieDb_OBJCUITestsLaunchTests.m
//  MovieDb_OBJCUITests
//
//  Created by zein rezky chandra on 10/07/24.
//

#import <XCTest/XCTest.h>

@interface MovieDb_OBJCUITestsLaunchTests : XCTestCase

@end

@implementation MovieDb_OBJCUITestsLaunchTests

+ (BOOL)runsForEachTargetApplicationUIConfiguration {
    return YES;
}

- (void)setUp {
    self.continueAfterFailure = NO;
}

- (void)testLaunch {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    [app launch];

    // Insert steps here to perform after app launch but before taking a screenshot,
    // such as logging into a test account or navigating somewhere in the app

    XCTAttachment *attachment = [XCTAttachment attachmentWithScreenshot:XCUIScreen.mainScreen.screenshot];
    attachment.name = @"Launch Screen";
    attachment.lifetime = XCTAttachmentLifetimeKeepAlways;
    [self addAttachment:attachment];
}

@end
