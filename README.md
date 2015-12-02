# Dictionary Basics: Ice Cream

## Objectives

1. Practice creating and using a dictionary.
2. Write methods to interpret the information in a dictionary.
3. Practice converting to a mutable dictionary and modifying it programmatically.

## Introduction

Some of the instructors are planning a summer ice cream party. Mark has collected some information on everyone's favorite ice cream flavors (including his own), but he needs help analyzing the list to know how much of each flavor to buy!

>Joe likes Peanut Butter and Chocolate  
Tim wants Natural Vanilla  
Sophie loves Mexican Chocolate  
Deniz only likes Natural Vanilla  
Tom will eat Mexican Chocolate  
Jim never answered so he's getting Natural Vanilla  
Mark — Cookies 'n Cream duh

## Instructions

1. Open the `*.xcworkspace` file and *without* looking at the tests just yet, navigate to the `FISAppDelegate.h` header file and declare two methods:
  * `namesForIceCream:` which takes an `NSString` argument `iceCream` and returns an `NSArray` object.
  * `countsOfIceCream:` which takes an `NSDictionary` argument `iceCreamByName` and returns an `NSDictionary` object.

2. In the `FISAppDelegate.m` implementation file, use autocomplete to define the method bodies to return `nil`. At the start of the `namesForIceCream:` method, translate Mark's notes into an `NSDictionary` with each name as a key with that person's preferred ice cream flavor as the associated value. 

3. When you're done, check your work by looking at the `iceCreamByName` dictionary in the `FISAppDelegateSpec` test file. Your dictionary's key-value pairs should match it exactly, but don't just copy/paste it—really try to compose the dictionary yourself. Run the tests now to see that they fail.

4. Finish the `namesForIceCream:` method body to return an array of the names of everyone who likes the ice cream flavor submitted in the string argument. For example, "Mexican Chocolate" should return an array with "Sophie" and "Tom".

5. Write the `countsOfIceCream` body which returns a dictionary of the number (value) of people who like each flavor of ice cream (key). Look at the `countsByIceCream` dictionary in the `FISAppDelegateSpec` file to better understand what the test is expecting.  
  **Hint:** *Try using the* `namesForIceCream:` *method that you just wrote to get a list of names for each ice cream flavor by calling it on* `self`. *This method returns an array of names which you can then count. Remember that you have to convert integer values to* `NSNumber` *in order to store them in a collection.*

<a href='https://learn.co/lessons/objc-dictionary-ice-cream' data-visibility='hidden'>View this lesson on Learn.co</a>
