//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Lloyd W. Sykes on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        
        var cartTotal = 0
        
        for item in self.items {
            cartTotal += item.priceInCents
        }
        return cartTotal
    }
    
    func addItem(item: Item) {
        self.items.append(item)
    }
    
    func removeItem(unwantedItem: Item) {
        
        for (index, item) in self.items.enumerate() {
            if item == unwantedItem {
                self.items.removeAtIndex(index)
            }
        }
        
    }
    
    func itemsWithName(name: String) -> [Item] {
        
        var matchingNamesArray: [Item] = []
        
        for item in items {
            if item.name == name {
                matchingNamesArray.append(item)
            }
        }
        return matchingNamesArray
    }
    
    func itemsWithMinimumPriceInCents(centsLesser: Int) -> [Item] {
        
        var sortingByCentsArray: [Item] = []
        
        for item in self.items {
            if item.priceInCents >= centsLesser {
                sortingByCentsArray.append(item)
            }
        }
        return sortingByCentsArray
    }
    
    func itemsWithMaximumPriceInCents(centsGreater: Int) -> [Item] {
        
        var sortingByCentsArray: [Item] = []
        
        for item in self.items {
            if item.priceInCents <= centsGreater {
                sortingByCentsArray.append(item)
            }
        }
        return sortingByCentsArray
    }
}