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
- (TMKDesignCheatSheetDimension *)portrait;

//
+ (TMKDesignCheatSheet *)iPhone5;
+ (TMKDesignCheatSheet *)iPhone4;

@end
