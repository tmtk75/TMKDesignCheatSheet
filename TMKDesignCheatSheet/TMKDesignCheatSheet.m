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

@interface TMKDesignCheatSheet()
{
    TMKDesignCheatSheetDimension *_dim;
}
- (id)init:(TMKDesignCheatSheetDimension *)dim;
@end

@implementation TMKDesignCheatSheet

- (id)init:(TMKDesignCheatSheetDimension *)dim
{
    _dim = dim;
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
    return [[TMKDesignCheatSheet alloc] init:dim];
}

+ (TMKDesignCheatSheet *)iPhone4S
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:640.0f height:960.0f];
    return [[TMKDesignCheatSheet alloc] init:dim];
}

+ (TMKDesignCheatSheet *)iPhone4
{
    return self.iPhone4S;
}

+ (TMKDesignCheatSheet *)iPhone
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:320.0f height:480.0f];
    return [[TMKDesignCheatSheet alloc] init:dim];
}

+ (TMKDesignCheatSheet *)iPadRetina
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:1536.0f height:2048.0f];
    return [[TMKDesignCheatSheet alloc] init:dim];
}

+ (TMKDesignCheatSheet *)iPadMini
{
    TMKDesignCheatSheetDimension *dim = [[TMKDesignCheatSheetDimension alloc] init:768.0f height:1024.0f];
    return [[TMKDesignCheatSheet alloc] init:dim];
}

+ (TMKDesignCheatSheet *)iPad
{
    return self.iPadMini;
}

@end
