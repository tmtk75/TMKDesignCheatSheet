//
//  TMKDesignCheatSheetTests.m
//  TMKDesignCheatSheetTests
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TMKDesignCheatSheet.h"

@interface TMKDesignCheatSheetTests : XCTestCase
@end

@implementation TMKDesignCheatSheetTests

// http://ivomynttinen.com/blog/the-ios-7-design-cheat-sheet/

- (void)testResolutions
{
    TMKDesignCheatSheet *iPhone5 = TMKDesignCheatSheet.iPhone5;
    XCTAssertEqual(iPhone5.portrait.resolution.width,    640.0f);
    XCTAssertEqual(iPhone5.portrait.resolution.height,  1136.0f);
    XCTAssertEqual(iPhone5.landscape.resolution.width,  1136.0f);
    XCTAssertEqual(iPhone5.landscape.resolution.height,  640.0f);

    TMKDesignCheatSheet *iPhone4S = TMKDesignCheatSheet.iPhone4S;
    XCTAssertEqual(iPhone4S.portrait.resolution.width,   640.0f);
    XCTAssertEqual(iPhone4S.portrait.resolution.height,  960.0f);
    XCTAssertEqual(iPhone4S.landscape.resolution.width,  960.0f);
    XCTAssertEqual(iPhone4S.landscape.resolution.height, 640.0f);

    TMKDesignCheatSheet *iPhone4 = TMKDesignCheatSheet.iPhone4;
    XCTAssertEqual(iPhone4.portrait.resolution.width,   640.0f);
    XCTAssertEqual(iPhone4.portrait.resolution.height,  960.0f);
    XCTAssertEqual(iPhone4.landscape.resolution.width,  960.0f);
    XCTAssertEqual(iPhone4.landscape.resolution.height, 640.0f);

    TMKDesignCheatSheet *iPhone = TMKDesignCheatSheet.iPhone;
    XCTAssertEqual(iPhone.portrait.resolution.width,   320.0f);
    XCTAssertEqual(iPhone.portrait.resolution.height,  480.0f);
    XCTAssertEqual(iPhone.landscape.resolution.width,  480.0f);
    XCTAssertEqual(iPhone.landscape.resolution.height, 320.0f);

    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    XCTAssertEqual(iPadRetina.portrait.resolution.width,   1536.0f);
    XCTAssertEqual(iPadRetina.portrait.resolution.height,  2048.0f);
    XCTAssertEqual(iPadRetina.landscape.resolution.width,  2048.0f);
    XCTAssertEqual(iPadRetina.landscape.resolution.height, 1536.0f);

    TMKDesignCheatSheet *iPadMini = TMKDesignCheatSheet.iPadMini;
    XCTAssertEqual(iPadMini.portrait.resolution.width,    768.0f);
    XCTAssertEqual(iPadMini.portrait.resolution.height,  1024.0f);
    XCTAssertEqual(iPadMini.landscape.resolution.width,  1024.0f);
    XCTAssertEqual(iPadMini.landscape.resolution.height,  768.0f);

    TMKDesignCheatSheet *iPad = TMKDesignCheatSheet.iPad;
    XCTAssertEqual(iPad.portrait.resolution.width,    768.0f);
    XCTAssertEqual(iPad.portrait.resolution.height,  1024.0f);
    XCTAssertEqual(iPad.landscape.resolution.width,  1024.0f);
    XCTAssertEqual(iPad.landscape.resolution.height,  768.0f);
}

- (void)testDisplays
{
    TMKDesignCheatSheet *iPhone5    = TMKDesignCheatSheet.iPhone5;
    TMKDesignCheatSheet *iPhone4S   = TMKDesignCheatSheet.iPhone4S;
    TMKDesignCheatSheet *iPhone4    = TMKDesignCheatSheet.iPhone4;
    TMKDesignCheatSheet *iPhone     = TMKDesignCheatSheet.iPhone;
    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    TMKDesignCheatSheet *iPadMini   = TMKDesignCheatSheet.iPadMini;
    TMKDesignCheatSheet *iPad       = TMKDesignCheatSheet.iPad;

    // PPI
    XCTAssertEqual(iPhone5.display.pixelPerInch,    326);
    XCTAssertEqual(iPhone4S.display.pixelPerInch,   326);
    XCTAssertEqual(iPhone4.display.pixelPerInch,    326);
    XCTAssertEqual(iPhone.display.pixelPerInch,     163);
    XCTAssertEqual(iPadRetina.display.pixelPerInch, 264);
    XCTAssertEqual(iPadMini.display.pixelPerInch,   163);
    XCTAssertEqual(iPad.display.pixelPerInch,       132);

    // Color Temperature
    XCTAssertEqual(iPhone5.display.colorTemperature,    @"Warm");
    XCTAssertEqual(iPhone4S.display.colorTemperature,   @"Cool");
    XCTAssertEqual(iPhone4.display.colorTemperature,    @"Cool");
    XCTAssertEqual(iPhone.display.colorTemperature,     @"Warm");
    XCTAssertEqual(iPadRetina.display.colorTemperature, @"Warm");
    XCTAssertEqual(iPadMini.display.colorTemperature,   @"Unknown");
    XCTAssertEqual(iPad.display.colorTemperature,       @"Warm");
}

- (void)testIcons
{
    TMKDesignCheatSheet *iPhone5    = TMKDesignCheatSheet.iPhone5;
    TMKDesignCheatSheet *iPhone4S   = TMKDesignCheatSheet.iPhone4S;
    TMKDesignCheatSheet *iPhone4    = TMKDesignCheatSheet.iPhone4;
    TMKDesignCheatSheet *iPhone     = TMKDesignCheatSheet.iPhone;
    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    TMKDesignCheatSheet *iPadMini   = TMKDesignCheatSheet.iPadMini;
    TMKDesignCheatSheet *iPad       = TMKDesignCheatSheet.iPad;

    // App Icon
    XCTAssertEqual(iPhone5.appIconSize.width,    120.0f);
    XCTAssertEqual(iPhone4S.appIconSize.width,   120.0f);
    XCTAssertEqual(iPhone4.appIconSize.width,    120.0f);
    XCTAssert     (iPhone.appIconSize == nil);  // Not supported
    XCTAssertEqual(iPadRetina.appIconSize.width, 152.0f);
    XCTAssertEqual(iPadMini.appIconSize.width,    76.0f);
    XCTAssertEqual(iPad.appIconSize.width,        76.0f);

    // AppStore Icon
    XCTAssertEqual(iPhone5.appStoreIconSize.width,    1024.0f);
    XCTAssertEqual(iPhone4S.appStoreIconSize.width,   1024.0f);
    XCTAssertEqual(iPhone4.appStoreIconSize.width,    1024.0f);
    XCTAssert     (iPhone.appStoreIconSize == nil);  // Not supported
    XCTAssertEqual(iPadRetina.appStoreIconSize.width, 1024.0f);
    XCTAssertEqual(iPadMini.appStoreIconSize.width,    512.0f);
    XCTAssertEqual(iPad.appStoreIconSize.width,        512.0f);
    
    // Spotlight Icon
    XCTAssertEqual(iPhone5.spotlightIconSize.width,    80.0f);
    XCTAssertEqual(iPhone4S.spotlightIconSize.width,   80.0f);
    XCTAssertEqual(iPhone4.spotlightIconSize.width,    80.0f);
    XCTAssert     (iPhone.spotlightIconSize == nil);  // Not supported
    XCTAssertEqual(iPadRetina.spotlightIconSize.width, 80.0f);
    XCTAssertEqual(iPadMini.spotlightIconSize.width,   40.0f);
    XCTAssertEqual(iPad.spotlightIconSize.width,       40.0f);
    
    // Settings Icon
    XCTAssertEqual(iPhone5.settingsIconSize.width,    58.0f);
    XCTAssertEqual(iPhone4S.settingsIconSize.width,   58.0f);
    XCTAssertEqual(iPhone4.settingsIconSize.width,    58.0f);
    XCTAssert     (iPhone.settingsIconSize == nil);  // Not supported
    XCTAssertEqual(iPadRetina.settingsIconSize.width, 58.0f);
    XCTAssertEqual(iPadMini.settingsIconSize.width,   29.0f);
    XCTAssertEqual(iPad.settingsIconSize.width,       29.0f);
}

- (void)testUserInterface
{
    TMKDesignCheatSheet *iPhone5    = TMKDesignCheatSheet.iPhone5;
    TMKDesignCheatSheet *iPhone4S   = TMKDesignCheatSheet.iPhone4S;
    TMKDesignCheatSheet *iPhone4    = TMKDesignCheatSheet.iPhone4;
    TMKDesignCheatSheet *iPhone     = TMKDesignCheatSheet.iPhone;
    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    TMKDesignCheatSheet *iPadMini   = TMKDesignCheatSheet.iPadMini;
    TMKDesignCheatSheet *iPad       = TMKDesignCheatSheet.iPad;

    // Status Bar
    XCTAssertEqual(iPhone5.portrait.statusBarHeight,     40.0f);
    XCTAssertEqual(iPhone5.landscape.statusBarHeight,    40.0f);
    XCTAssertEqual(iPhone4S.portrait.statusBarHeight,    40.0f);
    XCTAssertEqual(iPhone4S.landscape.statusBarHeight,   40.0f);
    XCTAssertEqual(iPhone4.portrait.statusBarHeight,     40.0f);
    XCTAssertEqual(iPhone4.landscape.statusBarHeight,    40.0f);
    XCTAssert     (iPhone.portrait.statusBarHeight  == -1.0f);
    XCTAssert     (iPhone.landscape.statusBarHeight == -1.0f);
    XCTAssertEqual(iPadRetina.portrait.statusBarHeight,  40.0f);
    XCTAssertEqual(iPadRetina.landscape.statusBarHeight, 40.0f);
    XCTAssertEqual(iPadMini.portrait.statusBarHeight,    20.0f);
    XCTAssertEqual(iPadMini.landscape.statusBarHeight,   20.0f);
    XCTAssertEqual(iPad.portrait.statusBarHeight,        20.0f);
    XCTAssertEqual(iPad.landscape.statusBarHeight,       20.0f);

    // Navigation Bar
    XCTAssertEqual(iPhone5.portrait.navigationBarHeight,     88.0f);
    XCTAssertEqual(iPhone5.landscape.navigationBarHeight,    64.0f);
    XCTAssertEqual(iPhone4S.portrait.navigationBarHeight,    88.0f);
    XCTAssertEqual(iPhone4S.landscape.navigationBarHeight,   64.0f);
    XCTAssertEqual(iPhone4.portrait.navigationBarHeight,     88.0f);
    XCTAssertEqual(iPhone4.landscape.navigationBarHeight,    64.0f);
    XCTAssert     (iPhone.portrait.navigationBarHeight  == -1.0f);
    XCTAssert     (iPhone.landscape.navigationBarHeight == -1.0f);
    XCTAssertEqual(iPadRetina.portrait.navigationBarHeight,  88.0f);
    XCTAssertEqual(iPadRetina.landscape.navigationBarHeight, 88.0f);
    XCTAssertEqual(iPadMini.portrait.navigationBarHeight,    44.0f);
    XCTAssertEqual(iPadMini.landscape.navigationBarHeight,   44.0f);
    XCTAssertEqual(iPad.portrait.navigationBarHeight,        44.0f);
    XCTAssertEqual(iPad.landscape.navigationBarHeight,       44.0f);

    // Tab Bar
    XCTAssertEqual(iPhone5.portrait.tabBarHeight,     98.0f);
    XCTAssertEqual(iPhone5.landscape.tabBarHeight,    98.0f);
    XCTAssertEqual(iPhone4S.portrait.tabBarHeight,    98.0f);
    XCTAssertEqual(iPhone4S.landscape.tabBarHeight,   98.0f);
    XCTAssertEqual(iPhone4.portrait.tabBarHeight,     98.0f);
    XCTAssertEqual(iPhone4.landscape.tabBarHeight,    98.0f);
    XCTAssert     (iPhone.portrait.tabBarHeight  == -1.0f);
    XCTAssert     (iPhone.landscape.tabBarHeight == -1.0f);
    XCTAssertEqual(iPadRetina.portrait.tabBarHeight,  112.0f);
    XCTAssertEqual(iPadRetina.landscape.tabBarHeight, 112.0f);
    XCTAssertEqual(iPadMini.portrait.tabBarHeight,    56.0f);
    XCTAssertEqual(iPadMini.landscape.tabBarHeight,   56.0f);
    XCTAssertEqual(iPad.portrait.tabBarHeight,        56.0f);
    XCTAssertEqual(iPad.landscape.tabBarHeight,       56.0f);

    // Tables
    XCTAssertEqual(iPhone5.portrait.tablesWidth,      640.0f);
    XCTAssertEqual(iPhone5.landscape.tablesWidth,    1136.0f);
    XCTAssertEqual(iPhone4S.portrait.tablesWidth,     640.0f);
    XCTAssertEqual(iPhone4S.landscape.tablesWidth,    960.0f);
    XCTAssertEqual(iPhone4.portrait.tablesWidth,      640.0f);
    XCTAssertEqual(iPhone4.landscape.tablesWidth,     960.0f);
    XCTAssert     (iPhone.portrait.tablesWidth  == -1.0f);
    XCTAssert     (iPhone.landscape.tablesWidth == -1.0f);
    XCTAssertEqual(iPadRetina.portrait.tablesWidth,  0.0f);
    XCTAssertEqual(iPadRetina.landscape.tablesWidth, 0.0f);
    XCTAssertEqual(iPadMini.portrait.tablesWidth,    0.0f);
    XCTAssertEqual(iPadMini.landscape.tablesWidth,   0.0f);
    XCTAssertEqual(iPad.portrait.tablesWidth,        0.0f);
    XCTAssertEqual(iPad.landscape.tablesWidth,       0.0f);
}

- (void)test
{
    TMKDesignCheatSheet *iPhone5    = TMKDesignCheatSheet.iPhone5;
    TMKDesignCheatSheet *iPhone4S   = TMKDesignCheatSheet.iPhone4S;
    TMKDesignCheatSheet *iPhone4    = TMKDesignCheatSheet.iPhone4;
    TMKDesignCheatSheet *iPhone     = TMKDesignCheatSheet.iPhone;
    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    TMKDesignCheatSheet *iPadMini   = TMKDesignCheatSheet.iPadMini;
    TMKDesignCheatSheet *iPad       = TMKDesignCheatSheet.iPad;

    XCTAssertEqual(iPhone5.portrait.navigationBarHorizontalMargin,     16.0f);
    XCTAssertEqual(iPhone5.landscape.navigationBarHorizontalMargin,    32.0f);
    XCTAssertEqual(iPhone4S.portrait.navigationBarHorizontalMargin,     0.0f);
    XCTAssertEqual(iPhone4S.landscape.navigationBarHorizontalMargin,    0.0f);
    XCTAssertEqual(iPhone4.portrait.navigationBarHorizontalMargin,      0.0f);
    XCTAssertEqual(iPhone4.landscape.navigationBarHorizontalMargin,     0.0f);
    XCTAssertEqual(iPhone.portrait.navigationBarHorizontalMargin,       0.0f);
    XCTAssertEqual(iPhone.landscape.navigationBarHorizontalMargin,      0.0f);
    XCTAssertEqual(iPadRetina.portrait.navigationBarHorizontalMargin,   0.0f);
    XCTAssertEqual(iPadRetina.landscape.navigationBarHorizontalMargin,  0.0f);
    XCTAssertEqual(iPadMini.portrait.navigationBarHorizontalMargin,     0.0f);
    XCTAssertEqual(iPadMini.landscape.navigationBarHorizontalMargin,    0.0f);
    XCTAssertEqual(iPad.portrait.navigationBarHorizontalMargin,         0.0f);
    XCTAssertEqual(iPad.landscape.navigationBarHorizontalMargin,        0.0f);
}

//- (void)test
//{
//    TMKDesignCheatSheet *iPhone5    = TMKDesignCheatSheet.iPhone5;
//    TMKDesignCheatSheet *iPhone4S   = TMKDesignCheatSheet.iPhone4S;
//    TMKDesignCheatSheet *iPhone4    = TMKDesignCheatSheet.iPhone4;
//    TMKDesignCheatSheet *iPhone     = TMKDesignCheatSheet.iPhone;
//    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
//    TMKDesignCheatSheet *iPadMini   = TMKDesignCheatSheet.iPadMini;
//    TMKDesignCheatSheet *iPad       = TMKDesignCheatSheet.iPad;
//    
//    XCTAssertEqual(iPhone5,    nil);
//    XCTAssertEqual(iPhone4S,   nil);
//    XCTAssertEqual(iPhone4,    nil);
//    XCTAssertEqual(iPhone,     nil);
//    XCTAssertEqual(iPadRetina, nil);
//    XCTAssertEqual(iPadMini,   nil);
//    XCTAssertEqual(iPad,       nil);
//}

@end
