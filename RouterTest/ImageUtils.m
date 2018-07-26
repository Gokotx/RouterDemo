//
//  ImageUtils.m
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "ImageUtils.h"

@implementation ImageUtils

+(UIImage *)showImage:(NSString *)name type:(NSString *)type{
    return [UIImage imageNamed:[name stringByAppendingString:type]];
}

-(UIImage *)blurryImage:(UIImage *)image withBlurLevel:(NSNumber *)blur{
    CIImage *inputImage = [CIImage imageWithCGImage:image.CGImage];
    CIFilter *filter = [CIFilter filterWithName:@"CIGaussianBlur"
                                  keysAndValues:kCIInputImageKey, inputImage,
                        @"inputRadius", blur,nil];
    CIImage *outputImage = filter.outputImage;
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef outImage = [context createCGImage:outputImage fromRect:[inputImage extent]];
    return [UIImage imageWithCGImage:outImage];
}

@end
