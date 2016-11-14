//
//  Budget.swift
//  BudgetApp
//
//  Created by Brett Fisher on 10/26/16.
//  Copyright © 2016 FishWare. All rights reserved.
//

import UIKit

class Budget {
    
    // MARK: Properties
    private var name: String!
    private var amount: Double!
    
    init(name: String, amount: Double) {
        self.name = name
        self.amount = amount
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getAmount() -> Double {
        return amount
    }
}
