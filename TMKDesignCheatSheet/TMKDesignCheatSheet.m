//
//  TMKDesignCheatSheet.m
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import "TMKDesignCheatSheet.h"
#import "TMKDesignCheatSheetDimension.h"
#include <sys/sysctl.h>

typedef NS_ENUM(NSUInteger, TMKIconType) {
    TMKIconType_AppIcon,
    TMKIconType_AppStoreIcon,
    TMKIconType_SpotlightIcon,
    TMKIconType_SettingsIcon,
};

@interface TMKDesignCheatSheet()
{
    TMKDesignCheatSheetOrientation *_orient;
    TMKDesignCheatSheetDisplay *_display;
    NSArray *_iconSizes;
}
- (id)init:(TMKDesignCheatSheetOrientation *)orient display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes;
@end

@implementation TMKDesignCheatSheet
- (id)init:(TMKDesignCheatSheetOrientation *)orient display:(TMKDesignCheatSheetDisplay *)display iconWidths:(NSArray *)iconSizes
{
    _orient = orient;
    _display = display;
    _iconSizes = iconSizes;
    return self;
}

- (TMKDesignCheatSheetOrientation *)portrait
{
    return _orient;
}

- (TMKDesignCheatSheetOrientation *)landscape
{
    return _orient.rotate;
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
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:640.0f height:1136.0f]
                                              uiSizes:@[@40.0f, @88.0f, @64.f, @98.f, @640.f, @1136.f]
                                              navbar:@[@16.0f, @32.0f]];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:orient
                                     display:display
                                  iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPhone4S
{
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:640.0f height:960.0f]
                                              uiSizes:@[@40.0f, @88.0f, @64.f, @98.f, @640.f, @960.f]];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:326 colorTemperature:@"Cool"];
    return [[TMKDesignCheatSheet alloc] init:orient
                                     display:display
                                  iconWidths:@[@120.0f, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPhone4
{
    return self.iPhone4S;
}

#define TABLES_WIDTH_DYNAMIC (@0.f)

+ (TMKDesignCheatSheet *)iPhone
{
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:320.0f height:480.0f]
                                              uiSizes:nil];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:orient display:display iconWidths:nil];
}

+ (TMKDesignCheatSheet *)iPadRetina
{
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:1536.0f height:2048.0f]
                                              uiSizes:@[@40.0f, @88.0f, @88.f, @112.f, TABLES_WIDTH_DYNAMIC, TABLES_WIDTH_DYNAMIC]];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:264 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:orient
                                     display:display
                                  iconWidths:@[@152.f, @1024.0f, @80.0f, @58.0f]];
}

+ (TMKDesignCheatSheet *)iPadMini
{
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:768.0f height:1024.0f]
                                              uiSizes:@[@20.0f, @44.0f, @44.f, @56.f, TABLES_WIDTH_DYNAMIC, TABLES_WIDTH_DYNAMIC]];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:163 colorTemperature:@"Unknown"];
    return [[TMKDesignCheatSheet alloc] init:orient
                                     display:display
                                  iconWidths:@[@76.f, @512.0f, @40.0f, @29.0f]];
}

+ (TMKDesignCheatSheet *)iPad
{
    TMKDesignCheatSheetDimension *dim = self.iPadMini.portrait.resolution;
    TMKDesignCheatSheetOrientation *orient = [[TMKDesignCheatSheetOrientation alloc]
                                              init:TMKOrientation_Portrait
                                              resolution:[[TMKDesignCheatSheetDimension alloc] init:dim.width height:dim.height]
                                              uiSizes:@[@20.0f, @44.0f, @44.f, @56.f, TABLES_WIDTH_DYNAMIC, TABLES_WIDTH_DYNAMIC]];
    TMKDesignCheatSheetDisplay *display = [[TMKDesignCheatSheetDisplay alloc] init:132 colorTemperature:@"Warm"];
    return [[TMKDesignCheatSheet alloc] init:orient
                                     display:display
                                  iconWidths:@[@76.f, @512.0f, @40.0f, @29.0f]];
}

+ (NSString *)platformRawString
{
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithUTF8String:machine];
    free(machine);
    return platform;
}
@end
