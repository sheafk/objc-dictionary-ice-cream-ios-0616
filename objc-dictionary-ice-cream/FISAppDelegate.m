//
//  FISAppDelegate.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla"            ,
                                      @"Sophie" : @"Mexican Chocolate"          ,
                                      @"Deniz"  : @"Natural Vanilla"            ,
                                      @"Tom"    : @"Mexican Chocolate"          ,
                                      @"Jim"    : @"Natural Vanilla"            ,
                                      @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *names = [ @[] mutableCopy];
    for (NSString *key in [iceCreamByName allKeys]) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    
    return [NSArray arrayWithArray:names];
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsOfIceCream = [ @{} mutableCopy];
    for (NSString *key in iceCreamByName) {
        NSString *iceCream = iceCreamByName[key];
        NSArray *currentNames = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:currentNames.count];
    }
    
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
}

@end
