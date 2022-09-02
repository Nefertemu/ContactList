//
//  DetailedContactsTableViewController.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import UIKit

final class DetailedContactsTableViewController: UITableViewController {
    
    // MARK: - Public properties
    
    var contacts = [Person]()

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContact", for: indexPath)
        let contact = contacts[indexPath.section]
        
        if indexPath.row == 0 {
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "phone")
            content.text = contact.phone
            
            cell.contentConfiguration = content
        } else {
            var content = cell.defaultContentConfiguration()
            content.image = UIImage(systemName: "envelope")
            content.text = contact.email
            
            cell.contentConfiguration = content
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
