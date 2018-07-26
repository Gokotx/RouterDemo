//
//  workshop+ImageUtils.m
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "Workshop+ImageUtils.h"

@implementation Workshop (ImageUtils)

+(UIImage*)ImageUtils_showImage:(NSString *)name type:(NSString *)type{
    UIImage * image = [Workshop invokeSEL:_cmd params:name,type, nil];
    return image;
}

+(UIImage *)ImageUtils_blurryImage:(UIImage *)image blur:(CGFloat)blur{
    UIImage * resultImage = [Workshop invokeSEL:_cmd params:image,@(blur), nil];
    return resultImage;
}

@end
