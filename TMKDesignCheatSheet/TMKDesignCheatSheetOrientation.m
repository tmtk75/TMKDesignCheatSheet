//
//  TMKDesignCheatSheetOrientation.m
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/10.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import "TMKDesignCheatSheetOrientation.h"
#import "TMKDesignCheatSheetDimension.h"


typedef NS_ENUM(NSUInteger, TMKUIType) {
    TMKUIType_StatusBar,
    TMKUIType_NavigationBar,
    TMKUIType_NavigationBar_Landscape,
    TMKUIType_TabBar,
    TMKUIType_Tables,
    TMKUIType_Tables_Landscape,
};

typedef NS_ENUM(NSUInteger, TMKNavigationBar) {
    TMKNavigationBar_HorizontalMargin,
    TMKNavigationBar_HorizontalMargin_Landscape,
};

@interface TMKDesignCheatSheetOrientation()
{
    TMKOrientation _orientation;
    TMKDesignCheatSheetDimension *_dim;
    NSArray *_uiSizes;
    NSArray *_navbar;
}
@end

@implementation TMKDesignCheatSheetOrientation
- (id)init:(TMKOrientation)orient resolution:(TMKDesignCheatSheetDimension *)dim uiSizes:(NSArray *)uiSizes
{
    return [self init:orient resolution:dim uiSizes:uiSizes navbar:@[@0.0f, @0.0f]];
}

- (id)init:(TMKOrientation)orient resolution:(TMKDesignCheatSheetDimension *)dim uiSizes:(NSArray *)uiSizes navbar:(NSArray *)navbar
{
    _orientation = orient;
    _dim = dim;
    _uiSizes = uiSizes;
    _navbar = navbar;
    return self;
}

- (TMKDesignCheatSheetDimension *)resolution
{
    return _dim;
}

- (CGFloat)statusBarHeight
{
    return [self uiSizeOf:TMKUIType_StatusBar];
}

- (CGFloat)navigationBarHeight
{
    if (_orientation == TMKOrientation_Portrait)
        return [self uiSizeOf:TMKUIType_NavigationBar];
    return [self uiSizeOf:TMKUIType_NavigationBar_Landscape];
}

- (CGFloat)tabBarHeight
{
    return [self uiSizeOf:TMKUIType_TabBar];
}

- (CGFloat)tablesWidth
{
    if (_orientation == TMKOrientation_Portrait)
        return [self uiSizeOf:TMKUIType_Tables];
    return [self uiSizeOf:TMKUIType_Tables_Landscape];
}

- (CGFloat)navigationBarHorizontalMargin
{
    if (_orientation == TMKOrientation_Portrait)
        return  [self floatValue:TMKNavigationBar_HorizontalMargin values:_navbar defval:0.0f];
    return [self floatValue:TMKNavigationBar_HorizontalMargin_Landscape values:_navbar defval:0.0f];
}

- (CGFloat)uiSizeOf:(TMKUIType)type
{
    return  [self floatValue:type values:_uiSizes defval:-1.0f];
}

- (CGFloat)floatValue:(int)kind values:(NSArray *)values defval:(CGFloat)defval
{
    if (values == nil) {
        return defval;
    }
    return [((NSNumber *)values[kind]) floatValue];
}

- (TMKDesignCheatSheetOrientation *)rotate
{
    TMKOrientation orient= _orientation == TMKOrientation_Portrait ? TMKOrientation_Landscape : TMKOrientation_Portrait;
    TMKDesignCheatSheetDimension *rotate = [[TMKDesignCheatSheetDimension alloc] init:_dim.height height:_dim.width];
    return [[TMKDesignCheatSheetOrientation alloc] init:orient resolution:rotate uiSizes:_uiSizes];
}
@end
