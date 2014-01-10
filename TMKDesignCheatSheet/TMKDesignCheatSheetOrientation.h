//
//  TMKDesignCheatSheetOrientation.h
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/10.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, TMKOrientation) {
    TMKOrientation_Portrait,
    TMKOrientation_Landscape,
};

@class TMKDesignCheatSheetDimension;

@interface TMKDesignCheatSheetOrientation : NSObject
@property (readonly) TMKDesignCheatSheetDimension *resolution;
@property (readonly) CGFloat statusBarHeight;
@property (readonly) CGFloat navigationBarHeight;
@property (readonly) CGFloat tabBarHeight;
@property (readonly) CGFloat tablesWidth;
- (id)init:(TMKOrientation)orient resolution:(TMKDesignCheatSheetDimension *)dim uiSizes:(NSArray *)uiSizes;
@end