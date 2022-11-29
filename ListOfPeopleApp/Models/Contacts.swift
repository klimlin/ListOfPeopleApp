//
//  Contacts.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 22.11.2022.
//

struct Person {
    let firstName: String
    let lastName: String
    let number: String
    let email: String
}


extension Person {
    static func getContactList() -> [Person] {
        
        var finalList: [Person] = []
        
        let firstNames = DataStore.shared.firstNames.shuffled()
        let lastNames = DataStore.shared.lastNames.shuffled()
        let numbers = DataStore.shared.numbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            numbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                number: numbers[index],
                email: emails[index]
            )
            
            finalList.append(person)
        }
        
        return finalList
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}


