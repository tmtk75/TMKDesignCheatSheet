//
//  TMKDesignCheatSheet.m
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import "TMKDesignCheatSheet.h"

@interface TMKDesignCheatSheetDimension()
- (id)init:(CGFloat)width height:(CGFloat)height;
@end

@implementation TMKDesignCheatSheetDimension
- (id)init:(CGFloat)width height:(CGFloat)height
{
    _width = width;
    _height = height;
    return self;
}
@end

@interface TMKDesignCheatSheetDisplay()
- (id)init:(NSInteger)ppi colorTemperature:(NSString *)colorTemperature;
@end

@implementation TMKDesignCheatSheetDisplay
- (id)init:(NSInteger)ppi colorTemperature:(NSString *)colorTemperature
{
    _pixelPerInch = ppi;
    _colorTemperature = colorTemperature;
    return self;
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
}
- (id)init:(TMKDesignCheatSheetDimension *)dim display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes;
@end

@implementation TMKDesignCheatSheet

- (id)init:(TMKDesignCheatSheetDimension *)dim display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes
{
    _dim = dim;
    _display = display;
    _iconSizes = iconSizes;
    return self;
}

- (TMKDesignCheatSheetDimension *)portrait
{
    return _dim;
}

- (TMKDesignCheatSheetDimension *)landscape
{
    TMKDesignCheatSheetDimension *dim = self.portrait;
    return [[TMKDesignCheatSheetDimension alloc] init:dim.height height:dim.width];
}

+ (TMKDesignCheatSheet *)iPhone5
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:640.0f height:1136.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPhone4S
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:640.0f height:960.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Cool"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPhone4
{
    return self.iPhone4S;
}

+ (TMKDesignCheatSheet *)iPhone
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:320.0f height:480.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[]];
}

+ (TMKDesignCheatSheet *)iPadRetina
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:1536.0f height:2048.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:264 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[@152, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPadMini
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:768.0f height:1024.0f];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Unknown"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[@76, @512.0f, @40.0f, @29.0f]];
}

+ (TMKDesignCheatSheet *)iPad
{
    TMKDesignCheatSheetDimension *dim = self.iPadMini.portrait;
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:132 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:dim display:display iconWidths:@[@76, @512.0f, @40.0f, @29.0f]];
}

@end
