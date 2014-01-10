//
//  TMKDesignCheatSheet.m
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import "TMKDesignCheatSheet.h"
#import "TMKDesignCheatSheetDimension.h"


typedef NS_ENUM(NSUInteger, TMKOrientation) {
    TMKOrientation_Portrait,
    TMKOrientation_Landscape,
};

@interface TMKDesignCheatSheetOrientation()
{
    TMKOrientation _orientation;
    TMKDesignCheatSheetDimension *_dim;
    NSArray *_uiSizes;
}
@end

typedef NS_ENUM(NSUInteger, TMKUIType) {
    TMKUIType_StatusBar,
    TMKUIType_NavigationBar,
    TMKUIType_TabBar,
    TMKUIType_Tables,
};

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

typedef NS_ENUM(NSUInteger, TMKIconType) {
    TMKIconType_AppIcon,
    TMKIconType_AppStoreIcon,
    TMKIconType_SpotlightIcon,
    TMKIconType_SettingsIcon,
};

@interface TMKDesignCheatSheet()
{
    TMKDesignCheatSheetDimension *_dim;
    TMKDesignCheatSheetDisplay *_display;
    NSArray *_iconSizes;
    NSArray *_uiSizes;
}
- (id)init:(TMKDesignCheatSheetDimension *)dim display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes uiSizes:(NSArray *)uiSizes;
@end

@implementation TMKDesignCheatSheet

- (id)init:(TMKDesignCheatSheetDimension *)dim display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes
   uiSizes:(NSArray *)uiSizes
{
    _dim = dim;
    _display = display;
    _iconSizes = iconSizes;
    _uiSizes = uiSizes;
    return self;
}

- (TMKDesignCheatSheetOrientation *)portrait
{
    return [[TMKDesignCheatSheetOrientation alloc] init:TMKOrientation_Portrait resolution:_dim uiSizes:_uiSizes];
}

- (TMKDesignCheatSheetOrientation *)landscape
{
    TMKDesignCheatSheetDimension *dim = self.portrait.resolution;
    TMKDesignCheatSheetDimension *rotate = [[TMKDesignCheatSheetDimension alloc] init:dim.height height:dim.width];
    return [[TMKDesignCheatSheetOrientation alloc] init:TMKOrientation_Landscape resolution:rotate uiSizes:_uiSizes];
}

- (TMKDesignCheatSheetDimension *)iconSize:(TMKIconType)type
{
    if (_iconSizes == nil) {
        return nil;
    }
    
    CGFloat width = [((NSNumber *)_iconSizes[type]) floatValue];
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:width height:width];
    return dim;
}


#pragma mark - Icon Size
- (TMKDesignCheatSheetDimension *)appIconSize {return [self iconSize:TMKIconType_AppIcon];}
- (TMKDesignCheatSheetDimension *)appStoreIconSize {return [self iconSize:TMKIconType_AppStoreIcon];}
- (TMKDesignCheatSheetDimension *)spotlightIconSize {return [self iconSize:TMKIconType_SpotlightIcon];}
- (TMKDesignCheatSheetDimension *)settingsIconSize {return [self iconSize:TMKIconType_SettingsIcon];}


#pragma mark - Factory Methods
+ (TMKDesignCheatSheet *)iPhone5
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:640.0f height:1136.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim
                                     display:display
                                  iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]
                                     uiSizes:@[@40.0f, @88.0f, @98.f, @640.f]];
}

+ (TMKDesignCheatSheet *)iPhone4S
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:640.0f height:960.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Cool"];
    return [[TMKDesignCheatSheet alloc] init:dim
                                     display:display
                                  iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]
                                     uiSizes:@[@40.0f, @88.0f, @98.f, @640.f]];
}

+ (TMKDesignCheatSheet *)iPhone4
{
    return self.iPhone4S;
}

+ (TMKDesignCheatSheet *)iPhone
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:320.0f height:480.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:nil uiSizes:nil];
}

+ (TMKDesignCheatSheet *)iPadRetina
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:1536.0f height:2048.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:264 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim
                                     display:display
                                  iconWidths:@[@152.f, @1024.0f, @80.0f, @58.0f]
                                     uiSizes:@[@40.0f, @88.0f, @112.f, @640.f]];
}

+ (TMKDesignCheatSheet *)iPadMini
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:768.0f height:1024.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Unknown"];
    return [[TMKDesignCheatSheet alloc] init:dim
                                     display:display
                                  iconWidths:@[@76.f, @512.0f, @40.0f, @29.0f]
                                     uiSizes:@[@20.0f, @44.0f, @56.f, @640.f]];
}

+ (TMKDesignCheatSheet *)iPad
{
    TMKDesignCheatSheetDimension *dim = self.iPadMini.portrait.resolution;
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:132 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim
                                     display:display
                                  iconWidths:@[@76.f, @512.0f, @40.0f, @29.0f]
                                     uiSizes:@[@20.0f, @44.0f, @56.f, @640.f]];
}

@end
