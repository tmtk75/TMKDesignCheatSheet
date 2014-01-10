//
//  TMKDesignCheatSheetDimension.h
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/10.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface TMKDesignCheatSheetDimension : NSObject
@property (readonly) CGFloat width;
@property (readonly) CGFloat height;
- (id)init:(CGFloat)width height:(CGFloat)height;
@end