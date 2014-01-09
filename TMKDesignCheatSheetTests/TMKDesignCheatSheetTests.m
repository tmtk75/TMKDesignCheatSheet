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
    XCTAssertEqual(iPhone5.portrait.width,   640.0f);
    XCTAssertEqual(iPhone5.portrait.height, 1136.0f);
    XCTAssertEqual(iPhone5.landscape.width,  1136.0f);
    XCTAssertEqual(iPhone5.landscape.height,  640.0f);

    TMKDesignCheatSheet *iPhone4S = TMKDesignCheatSheet.iPhone4S;
    XCTAssertEqual(iPhone4S.portrait.width,  640.0f);
    XCTAssertEqual(iPhone4S.portrait.height, 960.0f);
    XCTAssertEqual(iPhone4S.landscape.width,  960.0f);
    XCTAssertEqual(iPhone4S.landscape.height, 640.0f);

    TMKDesignCheatSheet *iPhone4 = TMKDesignCheatSheet.iPhone4;
    XCTAssertEqual(iPhone4.portrait.width,  640.0f);
    XCTAssertEqual(iPhone4.portrait.height, 960.0f);
    XCTAssertEqual(iPhone4.landscape.width,  960.0f);
    XCTAssertEqual(iPhone4.landscape.height, 640.0f);

    TMKDesignCheatSheet *iPhone = TMKDesignCheatSheet.iPhone;
    XCTAssertEqual(iPhone.portrait.width,  320.0f);
    XCTAssertEqual(iPhone.portrait.height, 480.0f);
    XCTAssertEqual(iPhone.landscape.width,  480.0f);
    XCTAssertEqual(iPhone.landscape.height, 320.0f);

    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    XCTAssertEqual(iPadRetina.portrait.width,  1536.0f);
    XCTAssertEqual(iPadRetina.portrait.height, 2048.0f);
    XCTAssertEqual(iPadRetina.landscape.width,  2048.0f);
    XCTAssertEqual(iPadRetina.landscape.height, 1536.0f);

    TMKDesignCheatSheet *iPadMini = TMKDesignCheatSheet.iPadMini;
    XCTAssertEqual(iPadMini.portrait.width,   768.0f);
    XCTAssertEqual(iPadMini.portrait.height, 1024.0f);
    XCTAssertEqual(iPadMini.landscape.width,  1024.0f);
    XCTAssertEqual(iPadMini.landscape.height,  768.0f);

    TMKDesignCheatSheet *iPad = TMKDesignCheatSheet.iPad;
    XCTAssertEqual(iPad.portrait.width,   768.0f);
    XCTAssertEqual(iPad.portrait.height, 1024.0f);
    XCTAssertEqual(iPad.landscape.width,  1024.0f);
    XCTAssertEqual(iPad.landscape.height,  768.0f);
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

    XCTAssertEqual(iPhone5.portrait.statusBarHeight,      40.0f);
    XCTAssertEqual(iPhone5.landscape.statusBarHeight,     40.0f);
    XCTAssertEqual(iPhone4S.portrait.statusBarHeight,     40.0f);
    XCTAssertEqual(iPhone4S.landscape.statusBarHeight,    40.0f);
    XCTAssertEqual(iPhone4.portrait.statusBarHeight,      40.0f);
    XCTAssertEqual(iPhone4.landscape.statusBarHeight,     40.0f);
    XCTAssert     (iPhone.portrait.statusBarHeight  == NAN);
    XCTAssert     (iPhone.landscape.statusBarHeight == NAN);
    XCTAssertEqual(iPadRetina.portrait.statusBar.height,  40.0f);
    XCTAssertEqual(iPadRetina.landscape.statusBar.height, 40.0f);
    XCTAssertEqual(iPadMini.portrait.statusBar.height,    20.0f);
    XCTAssertEqual(iPadMini.landscape.statusBar.height,   20.0f);
    XCTAssertEqual(iPad.portrait.statusBar.height,        20.0f);
    XCTAssertEqual(iPad.landscape.statusBar.height,       20.0f);
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
    
    XCTAssertEqual(iPhone5,    nil);
    XCTAssertEqual(iPhone4S,   nil);
    XCTAssertEqual(iPhone4,    nil);
    XCTAssertEqual(iPhone,     nil);
    XCTAssertEqual(iPadRetina, nil);
    XCTAssertEqual(iPadMini,   nil);
    XCTAssertEqual(iPad,       nil);
}

@end
