//
//  DataManager.swift
//  ContactList
//
//  Created by Богдан Анищенков on 30.08.2022.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    // MARK: - Public properties
    
    let names = [
        "John", "Emily", "Jason", "Chris", "Elena",
        "Chloe", "Tony", "Thor", "Elton", "Stray"
    ]
    
    let surnames = [
        "Stark", "Odinson", "Ragnarson", "Blanc", "Evans",
        "Cavil", "Steward", "Smith", "Batson", "Moretz"
    ]
    
    let phones = [
        "677869346", "875208346", "125086123", "647839744", "745274547",
        "049503457", "098761457", "467836457", "547394457", "986122475"
    ]
    
    let emails = ["myfavdog@mail.com", "ilovemycat@mail.com",
                  "jesuschrist@mail.com", "worldmap@mail.com",
                  "greenday@mail.com", "xboxsupport@mail.com",
                  "playstationgamer@mail.com", "fitter@mail.com",
                  "washingservise@mail.com", "carhelp@mail.com"
    ]
    
    // MARK: - Initializers
    
    private init() {}
}
