//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import UIKit

final class ContactInfoViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public properties
    
    var person = Person(name: "", surname: "", phone: "", email: "")
    
    // MARK: - Life cycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.name + " " + person.surname
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
    }
    
}
