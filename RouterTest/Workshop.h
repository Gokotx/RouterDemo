//
//  workshop.h
//  RouterTest
//
//  Created by Goko on 26/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

typedef id(^invokeBlock)(NSArray* paramArr);


@interface Workshop : NSObject

@property(nonatomic,assign) BOOL errorHappend;

/**
 单例
 */
singleH(Workshop)

+(id)invokeSEL:(SEL)selector params:(id)param, ...NS_REQUIRES_NIL_TERMINATION;

+(id)openRemoteUrl:(NSString *)urlString;

@end
