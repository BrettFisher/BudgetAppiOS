//
//  AddTransactionViewController.swift
//  BudgetApp
//
//  Created by Brian West on 12/12/16.
//  Copyright © 2016 FishWare. All rights reserved.
//

import UIKit

class AddTransactionViewController: UIViewController {
    
    var previousViewController: TransactionTableViewController?
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveTransaction(_ sender: Any) {
        let name = nameTextField.text!
        let amount = Double(amountTextField.text!)
        
        if amount != nil {
            let transaction = Transaction(title: name, amount: amount!)
        
            previousViewController?.addTransaction(transaction: transaction)
            self.dismiss(animated: true, completion: nil)
        } else {
            self.amountTextField.textColor = UIColor.red
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
