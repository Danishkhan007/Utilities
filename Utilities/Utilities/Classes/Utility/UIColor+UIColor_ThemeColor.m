//
//  UIColor+UIColor_ThemeColor.m
//  Utilities
//
//  Created by Danish Khan on 06/11/17.
//  Copyright © 2017 Danish Khan. All rights reserved.
//

#import "UIColor+UIColor_ThemeColor.h"

@implementation UIColor (UIColor_ThemeColor)

+ (UIColor*)grid1Color {
    return [UIColor colorWithRed:(221.0/255.0) green:(15.0/255.0) blue:(56.0/255.0) alpha:1.0];
}

+ (UIColor*)grid2Color {
    return [UIColor colorWithRed:(27.0/255.0) green:(178.0/255.0) blue:(75.0/255.0) alpha:1.0];
}

+ (UIColor*)grid3Color {
    return [UIColor colorWithRed:(48.0/255.0) green:(144.0/255.0) blue:(231.0/255.0) alpha:1.0];
}

+ (UIColor*)grid4Color {
    return [UIColor colorWithRed:(253.0/255.0) green:(230.0/255.0) blue:(6.0/255.0) alpha:1.0];
}

+ (UIColor*)randomGridColorForIndex:(NSInteger)index {
    Float32 red  = index*3;
    Float32 blue = index*4;
    Float32 green = index*5;
    if (red > 255.0)
        red = (red - 255.0);
    if (green > 255.0)
        green = (green - 255.0);
    if (blue > 255.0)
        blue = (blue - 255.0);
    
    return [UIColor colorWithRed:(red/255.0) green:(green/255.0) blue:(blue/255.0) alpha:1];
}

@end
