//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Bogdan Anishchenkov on 01.09.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passContacts()
    }
    
    private func passContacts() {
        
        let contacts = Person.getUniqueContacts()
        
        guard let firstNavigationVC = viewControllers?.first as? UINavigationController else { return }
        guard let contactsListVC = firstNavigationVC.topViewController as? ContactListTableViewController else { return }
        contactsListVC.contacts = contacts
        
        guard let secondNavigationVC = viewControllers?.last as? UINavigationController else { return }
        guard let detailedContactsListVC = secondNavigationVC.topViewController as? DetailedContactsTableViewController else { return }
        detailedContactsListVC.contacts = contacts
    }
    
}
