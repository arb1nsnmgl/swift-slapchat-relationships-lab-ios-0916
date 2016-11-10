//
//  RecipientViewController.swift
//  SlapChat
//
//  Created by Arvin San Miguel on 11/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class RecipientViewController: UITableViewController {

    var store = DataStore.sharedInstance
    
    var selectedPerson : Recipient?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        store.fetchRecipient()
        
    }
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return store.recipients.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipientCell", for: indexPath)
        if let recipient = store.recipients[indexPath.row] as? Recipient {
            cell.textLabel?.text = recipient.name
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let dest = segue.destination as? TableViewController, let indexPath = tableView.indexPathForSelectedRow {
            selectedPerson = store.recipients[indexPath.row]
            dest.selected = selectedPerson
        }
    }
    
    

    
}
