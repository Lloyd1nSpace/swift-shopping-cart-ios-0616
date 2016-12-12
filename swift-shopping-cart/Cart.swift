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
    
    func addItem(_ item: Item) {
        self.items.append(item)
    }
    
    func removeItem(_ unwantedItem: Item) {
        
        for (index, item) in self.items.enumerated() {
            if item == unwantedItem {
                self.items.remove(at: index)
            }
        }
        
    }
    
    func items(withName name: String) -> [Item] {
        
        var matchingNamesArray: [Item] = []
        
        for item in items {
            if item.name == name {
                matchingNamesArray.append(item)
            }
        }
        return matchingNamesArray
    }
    
    func items(withMinPrice price: Int) -> [Item] {
        
        var sortingByCentsArray: [Item] = []
        
        for item in self.items {
            if item.priceInCents >= price {
                sortingByCentsArray.append(item)
            }
        }
        return sortingByCentsArray
    }
    
    func items(withMaxPrice price: Int) -> [Item] {
        
        var sortingByCentsArray: [Item] = []
        
        for item in self.items {
            if item.priceInCents <= price {
                sortingByCentsArray.append(item)
            }
        }
        return sortingByCentsArray
    }
}
