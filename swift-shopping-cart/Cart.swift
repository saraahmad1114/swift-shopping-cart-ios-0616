//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Flatiron School on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart
{
    var items: [Item] = []
    
    func totalPriceInCents() -> Int
    {
        var totalCost: Int = 0
        
        for things in items
        {
           totalCost += things.priceInCents
        }
        
        return totalCost
    }
    
    func addItem(stuff :Item)
    {
        items.append(stuff)
    }
    
    func removeItem(stuff: Item)
    {
        for (index, singleItem) in items.enumerate()
        {
            if singleItem == stuff
            {
                items.removeAtIndex(index)
            }
        }
    }
    
    func itemsWithName(singleItem:String) -> [Item]
    {
        var newArray: [Item] = []
        for thing in items
        {
            if thing.name == singleItem
            {
                newArray.append(thing)
            }
        }
        return newArray
    }
    
    func itemsWithMinimumPriceInCents(num:Int) -> [Item]
    {
        var newArray: [Item] = []
        for thing in items
        {
            if thing.priceInCents >= num
            {
                newArray.append(thing)
            }
        }
        return newArray
    }
    
    func itemsWithMaximumPriceInCents(num:Int) -> [Item]
    {
        var newArray: [Item] = []
        for thing in items
        {
            if thing.priceInCents <= num
            {
                newArray.append(thing)
            }
        }
        return newArray
    }
    
    
}
