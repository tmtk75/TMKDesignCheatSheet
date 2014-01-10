//
//  TMKDesignCheatSheet.h
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TMKDesignCheatSheetDimension.h"
#import "TMKdesignCheatSheetDisplay.h"


@interface TMKDesignCheatSheetOrientation : NSObject
@property (readonly) TMKDesignCheatSheetDimension *resolution;
@property (readonly) CGFloat statusBarHeight;
@property (readonly) CGFloat navigationBarHeight;
@end


@interface TMKDesignCheatSheet : NSObject

//
@property (readonly) TMKDesignCheatSheetOrientation *portrait;
@property (readonly) TMKDesignCheatSheetOrientation *landscape;
@property (readonly) TMKDesignCheatSheetDisplay *display;
@property (readonly) TMKDesignCheatSheetDimension *appIconSize;
@property (readonly) TMKDesignCheatSheetDimension *appStoreIconSize;
@property (readonly) TMKDesignCheatSheetDimension *spotlightIconSize;
@property (readonly) TMKDesignCheatSheetDimension *settingsIconSize;

//
+ (TMKDesignCheatSheet *)iPhone5;
+ (TMKDesignCheatSheet *)iPhone4S;
+ (TMKDesignCheatSheet *)iPhone4;
+ (TMKDesignCheatSheet *)iPhone;
+ (TMKDesignCheatSheet *)iPadRetina;
+ (TMKDesignCheatSheet *)iPadMini;
+ (TMKDesignCheatSheet *)iPad;

@end
