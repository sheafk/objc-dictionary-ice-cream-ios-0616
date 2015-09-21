//  FISAppDelegate.m

#import "FISAppDelegate.h"

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
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for (NSString *key in [iceCreamByName allKeys]) {
        if ([iceCreamByName[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    
    return [NSArray arrayWithArray:names];
}

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *countsOfIceCream = [[NSMutableDictionary alloc] init];
    for (NSString *key in iceCreamByName) {
        NSString *iceCream = iceCreamByName[key];
        NSArray *currentNames = [self namesForIceCream:iceCream];
        countsOfIceCream[iceCream] = [NSNumber numberWithInteger:currentNames.count];
    }
    
    return [NSDictionary dictionaryWithDictionary:countsOfIceCream];
}

@end
