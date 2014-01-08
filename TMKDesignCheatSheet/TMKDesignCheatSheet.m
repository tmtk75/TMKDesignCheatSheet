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

@implementation TMKDesignCheatSheet

- (TMKDesignCheatSheetDimension *)portrait
{
    return [[TMKDesignCheatSheetDimension alloc] init:640.0f height:1136.0f];
}

+ (TMKDesignCheatSheet *)iPhone5
{
    return TMKDesignCheatSheet.new;
}

+ (TMKDesignCheatSheet *)iPhone4S
{
    return nil;
}

+ (TMKDesignCheatSheet *)iPhone4
{
    return self.iPhone4S;
}

+ (TMKDesignCheatSheet *)iPhone
{
    return nil;
}

+ (TMKDesignCheatSheet *)iPadRetina
{
    return nil;
}

+ (TMKDesignCheatSheet *)iPadMini
{
    return nil;
}

+ (TMKDesignCheatSheet *)iPad
{
    return nil;
}

@end
