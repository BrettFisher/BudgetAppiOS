//
//  TransactionTableViewController.swift
//  BudgetApp
//
//  Created by Brian West on 11/14/16.
//  Copyright © 2016 FishWare. All rights reserved.
//

import UIKit

class TransactionTableViewController: UITableViewController {

    var previousViewController: BudgetTableViewController?
    
    var budget: Budget!
    var addButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.showAddTransactionView))

        self.navigationItem.title = budget.getName()
        self.navigationItem.rightBarButtonItem = addButton
    }

    public func addTransaction(transaction: Transaction) {
        budget.addTransaction(transaction: transaction)
        
        let row = budget.getTransactions().count - 1
        let indexPath = IndexPath(row: row, section: 0)
        self.tableView.insertRows(at: [indexPath], with: .automatic)
        
        previousViewController?.tableView.reloadData()
    }
    
    public func showAddTransactionView() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "addTransactionId") as! AddTransactionViewController
        vc.previousViewController = self
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return budget.getTransactions().count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TransactionCell", for: indexPath)

        let transactions = budget.getTransactions()
        let transaction = transactions[indexPath.row]
        
        cell.textLabel?.text = transaction.title
        cell.detailTextLabel?.text = String(transaction.amount)

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}
