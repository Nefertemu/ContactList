//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import UIKit

final class ContactListTableViewController: UITableViewController {
    
    // MARK: - Private properties
    
    var contacts = [Person]()
    
    // MARK: - Life cycle methods
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//    
//    // MARK: - Private methods
//    
//    private func passContacts() {
//        
//    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = contact.name + " " + contact.surname
        
        cell.contentConfiguration = content
        
        return cell
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        
        guard let index = tableView.indexPathForSelectedRow else { return }
        let contact = contacts[index.row]
        contactInfoVC.person = contact
    }
    
}
