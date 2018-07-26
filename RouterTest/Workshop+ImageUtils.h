//
//  workshop+ImageUtils.h
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "Workshop.h"

@interface Workshop (ImageUtils)

+(UIImage*)ImageUtils_showImage:(NSString *)name type:(NSString *)type;

+(UIImage *)ImageUtils_blurryImage:(UIImage *)image blur:(CGFloat)blur;



@end
