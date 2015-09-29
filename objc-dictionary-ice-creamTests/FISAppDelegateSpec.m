//  FISAppDelegateSpec.m

#import <Foundation/Foundation.h>
#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta/Expecta.h"
#import <EXPMatchers+equalInAnyOrder.h>

#import "FISAppDelegate.h"

SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    
    __block FISAppDelegate *appDelegate;
    __block NSDictionary *iceCreamByName;
    __block NSDictionary *countsByIceCream;
    
    beforeEach(^{
        
        appDelegate = [[FISAppDelegate alloc] init];
        
        iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                            @"Tim"    : @"Natural Vanilla"            ,
                            @"Sophie" : @"Mexican Chocolate"          ,
                            @"Deniz"  : @"Natural Vanilla"            ,
                            @"Tom"    : @"Mexican Chocolate"          ,
                            @"Jim"    : @"Natural Vanilla"            ,
                            @"Mark"   : @"Cookies 'n Cream"          };
        
        countsByIceCream = @{ @"Peanut Butter and Chocolate" : @1     ,
                              @"Natural Vanilla"             : @3     ,
                              @"Mexican Chocolate"           : @2     ,
                              @"Cookies 'n Cream"            : @1    };
    });
    
    describe(@"namesForIceCream:", ^{
        it(@"returns an array containing 'Joe' when 'Peanut Butter and Chocolate' is submitted as the argument", ^{
            NSArray *result = [appDelegate namesForIceCream:@"Peanut Butter and Chocolate"];
            
            expect(result).to.equalInAnyOrder(@[ @"Joe" ]);
        });
        
        it(@"returns an array containing 'Sophie' and 'Tom' when 'Mexican Chocolate' is submitted as the argument", ^{
            NSArray *result = [appDelegate namesForIceCream:@"Mexican Chocolate"];
            
            expect(result).to.equalInAnyOrder(@[ @"Sophie", @"Tom" ]);
        });
        
        it(@"returns an array containing 'Deniz', 'Tim', and 'Jim' when 'Natural Vanilla' is submitted as the argument", ^{
            NSArray *result = [appDelegate namesForIceCream:@"Natural Vanilla"];
            
            expect(result).to.equalInAnyOrder(@[ @"Deniz", @"Tim", @"Jim" ]);
        });
    });
    
    describe(@"countsOfIceCream:", ^{
        it(@"returns a dictionary with four keys", ^{
            expect([[appDelegate countsOfIceCream:iceCreamByName] allKeys].count).to.equal(4);
        });
        
        it(@"returns a dictionary with the correct counts", ^{
            expect([appDelegate countsOfIceCream:iceCreamByName]).to.equal(countsByIceCream);
        });
    });
    
    
});

SpecEnd
