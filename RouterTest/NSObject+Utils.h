//
//  NSObject+MethodIdentify.h
//  RouterTest
//
//  Created by Goko on 27/07/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Utils)

-(void)addProperty:(NSString *)propertyName withValue:(id)value;
-(id)propertyValue:(NSString *)propertyName;
-(void)currentMalloc;

-(id)performSelector:(SEL)selector withParams:(id)firstParam,...NS_REQUIRES_NIL_TERMINATION;
-(id)performSelector:(SEL)selector withParamsArray:(NSArray*)params;

+(NSString *)requestIdentifierWithSEL:(SEL)selector;

+(void)throwExceptionWithName:(NSString *)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo;
-(void)throwExceptionWithName:(NSString *)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo;

@end
