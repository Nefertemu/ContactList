//
//  Person.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import UIKit

struct Person {
    
    // MARK: - Public properties
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}


extension Person {
    
    // MARK: - Static methods
    
    static func getUniqueContacts() -> [Person] {
        var contacts: [Person] = []
        
        let shuffledNames = DataStore.shared.names.shuffled()
        let shuffledSurnames = DataStore.shared.surnames.shuffled()
        let shuffledPhones = DataStore.shared.phones.shuffled()
        let shuffledEmails = DataStore.shared.emails.shuffled()
        
        let numberOfIterations = min(
            shuffledNames.count,
            shuffledSurnames.count,
            shuffledPhones.count,
            shuffledEmails.count
        )
        
        for iteration in 0..<numberOfIterations {
            let person = Person(
                name: shuffledNames[iteration],
                surname: shuffledSurnames[iteration],
                phone: shuffledPhones[iteration],
                email: shuffledEmails[iteration])
            contacts.append(person)
        }
        
        return contacts.shuffled()
    }
}
