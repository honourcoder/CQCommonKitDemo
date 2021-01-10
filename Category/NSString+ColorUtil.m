//
//  NSString+ColorUtil.m
//  CQCommonKit
//
//  Created by Arthur's on 2020/4/12.
//

#import "NSString+ColorUtil.h"

@implementation NSString (ColorUtil)

-(UIColor *)UIColor{
    CGFloat alpha, red, blue, green;
    
    NSString *colorString = self;
    
    if ([self hasPrefix:@"#"]) {
        colorString = [[self stringByReplacingOccurrencesOfString:@"#" withString:@""] uppercaseString];;
    }
    
    if ([self hasPrefix:@"0x"]){
        colorString = [self substringFromIndex:2];
    }
    
    switch ([colorString length]) {
        case 3: // #RGB
            alpha = 1.0f;
            red = [self colorComponentFromString:colorString andStart:0 andLength:1];
            green = [self colorComponentFromString:colorString andStart:1 andLength:1];
            blue  = [self colorComponentFromString:colorString andStart:2 andLength:1];
            break;
            
        case 4: // #ARGB
            alpha = [self colorComponentFromString:colorString andStart:0 andLength:1];
            red   = [self colorComponentFromString:colorString andStart:1 andLength:1];
            green = [self colorComponentFromString:colorString andStart:2 andLength:1];
            blue  = [self colorComponentFromString:colorString andStart:3 andLength:1];
            break;
            
        case 6: // #RRGGBB
            alpha = 1.0f;
            red   = [self colorComponentFromString:colorString andStart:0 andLength:2];
            green = [self colorComponentFromString:colorString andStart:2 andLength:2];
            blue  = [self colorComponentFromString:colorString andStart:4 andLength:2];
            break;
            
        case 8: // #AARRGGBB
            alpha = [self colorComponentFromString:colorString andStart:0 andLength:2];
            red   = [self colorComponentFromString:colorString andStart:2 andLength:2];
            green = [self colorComponentFromString:colorString andStart:4 andLength:2];
            blue  = [self colorComponentFromString:colorString andStart:6 andLength:2];
            break;
            
        default:
            return nil;
    }
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

-(CGFloat) colorComponentFromString:(NSString *)string andStart:(NSUInteger)start andLength :(NSUInteger) length{
    NSString *substring = [string substringWithRange:NSMakeRange(start, length)];
    NSString *fullHex = length == 2 ? substring : [NSString stringWithFormat: @"%@%@", substring, substring];
    
    unsigned hexComponent;
    [[NSScanner scannerWithString: fullHex] scanHexInt: &hexComponent];
    return hexComponent / 255.0;
}

@end
