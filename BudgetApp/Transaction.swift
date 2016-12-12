
import UIKit

class Transaction {
    var title: String
    var amount: Double
    var description: String
    
    init(title: String, amount: Double) {
        self.title = title
        self.amount = amount
        self.description = "No description."
    }
    
    init(title: String, amount: Double, description: String) {
        self.title = title
        self.amount = amount
        self.description = description
    }
}
