//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *)namesForIceCream:(NSString *)iceCream; {
    
    NSLog(@"What is iceCream?: %@", iceCream);
    NSMutableArray *nameForIceCream = [[NSMutableArray alloc]init];
    
    NSDictionary *namesList = @{ @"Joe"     : @"Peanut Butter and Chocolate"    ,
                                 @"Tim"     : @"Natural Vanilla"                ,
                                 @"Sophie"  : @"Mexican Chocolate"              ,
                                 @"Deniz"   : @"Natural Vanilla"                ,
                                 @"Tom"     : @"Mexican Chocolate"              ,
                                 @"Jim"     : @"Natural Vanilla"                ,
                                 @"Mark"    : @"Cookies 'n Cream"               };
    
    NSLog(@"Second check for ice cream: %@", iceCream);
    
    NSString *holding = iceCream;
    [nameForIceCream addObjectsFromArray:[namesList allKeysForObject:holding]];
    
    NSLog(@"Does this show all keys???: %@", nameForIceCream);

return nameForIceCream;
}

/*for (iceCream in namesList) {
 
 NSLog(@"Check value of holding string ice cream within for in loop: %@", holding);
 
 [nameForIceCream addObjectsFromArray:[namesList allKeysForObject:holding]];
 
 //I realized creating a new array was unecessary.
 //NSArray *peopleWhoWantThisIceCream = [namesList allKeysForObject:holding];
 //NSLog(@"Checking the new array: %@", peopleWhoWantThisIceCream);
 //[nameForIceCream addObjectsFromArray:peopleWhoWantThisIceCream];
 
 NSLog(@"Checking the mutable array within the for loop: %@", nameForIceCream);
 }

 Earlier Attempt by hard coding ice cream flavors.
 if ([iceCream isEqualToString: @"Peanut Butter and Chocolate"]) {
 NSArray *peanutLovers = [namesList allKeysForObject:@"Peanut Butter and Chocolate"];
 [nameForIceCream addObjectsFromArray:peanutLovers];
 }
 */



- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName; {
    
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    NSMutableArray *arrayOfIceCream = [[NSMutableArray alloc] init];
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    NSMutableArray *countNamesArray = [[NSMutableArray alloc] init];
    
    for (NSString *key in iceCreamByName) {
        [arrayOfIceCream addObject: iceCreamByName[key]];
        }
        NSArray *iceCreamArrayDeDupped = [[NSSet setWithArray: arrayOfIceCream] allObjects];
        NSLog(@"look at array %@", iceCreamArrayDeDupped);
        [newArray addObjectsFromArray:iceCreamArrayDeDupped];
    
    //I think a new for loop needs to go here. I think I can pass the newArray of 4 ice creams through the method namesForIceCream and then build a new array of numbers.
    
    for (NSUInteger i = 0; i < [newArray count]; i++) {
        
        NSArray *peopleNames = [self namesForIceCream:newArray[i]]; //<--FIX THIS!!!!!!!
        NSLog(@"What is the array: %@", peopleNames);
        NSUInteger p = (peopleNames.count);
        NSLog(@"Count of ice cream lovers = %lu", p);
        NSNumber *numberofNames = @(p);
        NSLog(@"Count of ice cream lovers = %@", numberofNames);
    
        [countNamesArray addObject:numberofNames]; //This is where I will add the count to a new array.
    } //for loop should end here.
    
    for (NSUInteger i = 0; i < [newArray count]; i++) {
    [dictionary setObject:countNamesArray[i] forKey:newArray[i]];
    }
    
    NSLog(@"see dictionary: %@", dictionary);
    return dictionary;
}

@end

//A couple things: I need to take the dictionary out of the loop. The Array needs to be declared outside of the loop so it can be returned at the end.
