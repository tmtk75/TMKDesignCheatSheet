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

- (void)testPortraitDimension
{
    TMKDesignCheatSheet *iPhone5 = TMKDesignCheatSheet.iPhone5;
    XCTAssertEqual(iPhone5.portrait.width,   640.0f);
    XCTAssertEqual(iPhone5.portrait.height, 1136.0f);

    TMKDesignCheatSheet *iPhone4S = TMKDesignCheatSheet.iPhone4S;
    XCTAssertEqual(iPhone4S.portrait.width,  640.0f);
    XCTAssertEqual(iPhone4S.portrait.height, 960.0f);

    TMKDesignCheatSheet *iPhone4 = TMKDesignCheatSheet.iPhone4;
    XCTAssertEqual(iPhone4.portrait.width,  640.0f);
    XCTAssertEqual(iPhone4.portrait.height, 960.0f);

    TMKDesignCheatSheet *iPhone = TMKDesignCheatSheet.iPhone;
    XCTAssertEqual(iPhone.portrait.width,  320.0f);
    XCTAssertEqual(iPhone.portrait.height, 480.0f);

    TMKDesignCheatSheet *iPadRetina = TMKDesignCheatSheet.iPadRetina;
    XCTAssertEqual(iPadRetina.portrait.width,  1536.0f);
    XCTAssertEqual(iPadRetina.portrait.height, 2048.0f);

    TMKDesignCheatSheet *iPadMini = TMKDesignCheatSheet.iPadMini;
    XCTAssertEqual(iPadMini.portrait.width,   768.0f);
    XCTAssertEqual(iPadMini.portrait.height, 1024.0f);

    TMKDesignCheatSheet *iPad = TMKDesignCheatSheet.iPad;
    XCTAssertEqual(iPad.portrait.width,   768.0f);
    XCTAssertEqual(iPad.portrait.height, 1024.0f);
}

@end


/*
 Device  Portrait  Landscape
 iPhone5 640x1136px  1136x640px
 iPhone4/4S 640x960px  960x640px
 iPhone & iPod Touch1st, 2nd and 3rd Generation  320x480px  480x320px
 Retina iPad iPad 3, iPad 41536x2048px  2048x1536px
 iPad Mini  768x1024px  1024x768px
 iPad1st and 2nd Generation  768x1024px  1024x768px
 */