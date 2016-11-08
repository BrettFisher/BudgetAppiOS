
import UIKit

class Transaction {
    var title: String
    var amount: Int
    var description: String
    
    init(title: String, amount: Int) {
        self.title = title
        self.amount = amount
        self.description = "No description."
    }
    
    init(title: String, amount: Int, description: String) {
        self.title = title
        self.amount = amount
        self.description = description
    }
}
