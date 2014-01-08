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

- (void)testDimensions
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
    XCTAssertEqual(iPhone5.pixelPerInch,    326);
    XCTAssertEqual(iPhone4S.pixelPerInch,   326);
    XCTAssertEqual(iPhone4.pixelPerInch,    326);
    XCTAssertEqual(iPhone.pixelPerInch,     163);
    XCTAssertEqual(iPadRetina.pixelPerInch, 264);
    XCTAssertEqual(iPadMini.pixelPerInch,   163);
    XCTAssertEqual(iPad.pixelPerInch,       132);

    // Color Temperature
    XCTAssertEqual(iPhone5.colorTemperature,    @"Warm");
    XCTAssertEqual(iPhone4S.colorTemperature,   @"Cool");
    XCTAssertEqual(iPhone4.colorTemperature,    @"Cool");
    XCTAssertEqual(iPhone.colorTemperature,     @"Warm");
    XCTAssertEqual(iPadRetina.colorTemperature, @"Warm");
    XCTAssertEqual(iPadMini.colorTemperature,   @"Unknown");
    XCTAssertEqual(iPad.colorTemperature,       @"Warm");
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
