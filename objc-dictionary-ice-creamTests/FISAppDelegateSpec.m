//
//  FISAppDelegateSpec.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright 2015 Mark Murray. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Specta.h"
#define EXP_SHORTHAND
#import "Expecta/Expecta.h"

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
        it (@"returns an NSArray instance", ^{
            expect([appDelegate namesForIceCream:@"Cookies 'n Cream"]).to.beKindOf([NSArray class]);
        });
        
        it(@"returns an array of a name who likes the submitted flavor", ^{
            expect([appDelegate namesForIceCream:@"Cookies 'n Cream"]).to.contain(@"Mark");
        });
        
        it(@"returns an array of multiple names who like the submitted flavor", ^{
            expect([appDelegate namesForIceCream:@"Natural Vanilla"]).to.contain(@"Deniz");
            expect([appDelegate namesForIceCream:@"Natural Vanilla"]).to.contain(@"Tim");
            expect([appDelegate namesForIceCream:@"Natural Vanilla"]).to.contain(@"Jim");
        });
    });
    
    describe(@"countsOfIceCream:", ^{
        it(@"returns an NSDictionary instance", ^{
            expect([appDelegate countsOfIceCream:iceCreamByName]).to.beKindOf([NSDictionary class]);
        });
        
        it(@"returns a dictionary with four keys", ^{
            expect([[appDelegate countsOfIceCream:iceCreamByName] allKeys].count).to.equal(4);
        });
        
        it(@"returns a dictionary with the correct counts", ^{
            expect([appDelegate countsOfIceCream:iceCreamByName]).to.equal(countsByIceCream);
        });
    });
    
    
});

SpecEnd
