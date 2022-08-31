//
//  Person.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import UIKit

// MARK: - Private properties

private let data = DataManager()

struct Person {
    
    // MARK: - Public properties
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    // MARK: - Static methods
    
    static func getUniqueContacts() -> [Person] {
        var contacts: [Person] = []
        
        let shuffledNames = data.names.shuffled()
        let shuffledSurnames = data.surnames.shuffled()
        let shuffledPhones = data.phones.shuffled()
        let shuffledEmails = data.emails.shuffled()
        
        for number in 0..<data.names.count {
            let person = Person(
                name: shuffledNames[number],
                surname: shuffledSurnames[number],
                phone: shuffledPhones[number],
                email: shuffledEmails[number])
            contacts.append(person)
        }
        
        return contacts.shuffled()
    }
}
