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
    TMKUIType_TabBar,
    TMKUIType_Tables,
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

- (TMKDesignCheatSheetDimension *)resolution {return _dim;}
- (CGFloat)statusBarHeight {return [self uiSizeOf:TMKUIType_StatusBar];}
- (CGFloat)navigationBarHeight {return [self uiSizeOf:TMKUIType_NavigationBar];}
- (CGFloat)uiSizeOf:(TMKUIType)type
{
    if (_uiSizes == nil) {
        return -1.0f;
    }
    
    return [((NSNumber *)_uiSizes[type]) floatValue];
}
@end