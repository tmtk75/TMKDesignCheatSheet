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

@interface TMKDesignCheatSheetOrientation()
{
    TMKOrientation _orientation;
    TMKDesignCheatSheetDimension *_dim;
    NSArray *_uiSizes;
}
@end

@implementation TMKDesignCheatSheetOrientation
- (id)init:(TMKOrientation)orient resolution:(TMKDesignCheatSheetDimension *)dim uiSizes:(NSArray *)uiSizes
{
    _orientation = orient;
    _dim = dim;
    _uiSizes = uiSizes;
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
    return 0.0f;
}

- (CGFloat)uiSizeOf:(TMKUIType)type
{
    if (_uiSizes == nil) {
        return -1.0f;
    }
    
    return [((NSNumber *)_uiSizes[type]) floatValue];
}
@end