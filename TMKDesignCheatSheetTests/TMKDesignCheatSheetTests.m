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

- (void)test_iPhone5
{
    TMKDesignCheatSheet *sheet = TMKDesignCheatSheet.iPhone5;
    XCTAssertEqual(sheet.portrait.width,   640.0f);
    XCTAssertEqual(sheet.portrait.height, 1136.0f);
}

- (void)test_iPhone4
{
    TMKDesignCheatSheet *sheet = TMKDesignCheatSheet.iPhone4;
    XCTAssertEqual(sheet.portrait.width,   640.0);
    XCTAssertEqual(sheet.portrait.height, 1136.0);
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