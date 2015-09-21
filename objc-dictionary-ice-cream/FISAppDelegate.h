//
//  FISAppDelegate.h
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Write your custom method names here.
 
 */

- (NSArray *)namesForIceCream:(NSString *)iceCream;

- (NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName;

@end

