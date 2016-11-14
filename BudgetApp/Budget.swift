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
    private var transactions: [Transaction]!
    
    init(name: String = "Default Name", amount: Double = 0.0) {
        self.name = name
        self.amount = amount
        self.transactions = [Transaction]()
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getAmount() -> Double {
        return amount
    }
    
    public func addTransaction(transaction: Transaction) {
        transactions.append(transaction)
    }
    
    public func getTransactions() -> [Transaction] {
        return transactions
    }
}
