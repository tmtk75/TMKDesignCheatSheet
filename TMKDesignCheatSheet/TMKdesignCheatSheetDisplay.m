//
//  TMKdesignCheatSheetDisplay.m
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/10.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import "TMKdesignCheatSheetDisplay.h"


@implementation TMKDesignCheatSheetDisplay
- (id)init:(NSInteger)ppi colorTemperature:(NSString *)colorTemperature
{
    _pixelPerInch = ppi;
    _colorTemperature = colorTemperature;
    return self;
}
@end