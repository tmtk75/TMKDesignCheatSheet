//
//  TMKdesignCheatSheetDisplay.h
//  TMKDesignCheatSheet
//
//  Created by Tomotaka Sakuma on 2014/01/10.
//  Copyright (c) 2014 Tomotaka Sakuma. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface TMKDesignCheatSheetDisplay : NSObject
@property (readonly) NSInteger pixelPerInch;
@property (readonly) NSString *colorTemperature;
- (id)init:(NSInteger)ppi colorTemperature:(NSString *)colorTemperature;
@end