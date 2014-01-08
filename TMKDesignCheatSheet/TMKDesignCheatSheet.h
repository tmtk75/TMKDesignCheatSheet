//
//  TMKDesignCheatSheet.h
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/08.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface TMKDesignCheatSheetDimension : NSObject
@property (readonly) CGFloat width;
@property (readonly) CGFloat height;
@end


@interface TMKDesignCheatSheet : NSObject

//
@property (readonly) TMKDesignCheatSheetDimension *portrait;
@property (readonly) TMKDesignCheatSheetDimension *landscape;
@property (readonly) NSInteger pixelPerInch;
@property (readonly) NSString *colorTemperature;

//
+ (TMKDesignCheatSheet *)iPhone5;
+ (TMKDesignCheatSheet *)iPhone4S;
+ (TMKDesignCheatSheet *)iPhone4;
+ (TMKDesignCheatSheet *)iPhone;
+ (TMKDesignCheatSheet *)iPadRetina;
+ (TMKDesignCheatSheet *)iPadMini;
+ (TMKDesignCheatSheet *)iPad;

@end
