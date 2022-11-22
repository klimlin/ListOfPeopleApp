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
        var firstNames = DataStore.shared.firstNames
        var lastNames = DataStore.shared.lastNames
        var numbers = DataStore.shared.numbers
        var emails = DataStore.shared.emails
        
        for _ in 1...10 {
            let itemFirstName = firstNames.randomElement()!
            let itemLastname = lastNames.randomElement()!
            let itemNumber = numbers.randomElement()!
            let itemEmail = emails.randomElement()!
            
            finalList.append(
                Person(
                    firstName: itemFirstName,
                    lastName: itemLastname,
                    number: itemNumber,
                    email: itemEmail)
            )
            
            firstNames = removeElementFromList(element: itemFirstName, from: firstNames)
            lastNames = removeElementFromList(element: itemLastname, from: lastNames)
            numbers = removeElementFromList(element: itemNumber, from: numbers)
            emails = removeElementFromList(element: itemEmail, from: emails)
        }
        
        func removeElementFromList(element: String, from items: [String]) -> [String] {
            var resultList: [String] = []
            for item in items {
                if item == element {
                    resultList = items.filter { $0 != item}
                }
            }
            return resultList
        }
        
        return finalList
    }
}

/*
 extension Person {
 static func getContactList() -> [Person] {
 [
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!),
 Person(
 firstName: DataStore.shared.firstNames.randomElement()!,
 lastName: DataStore.shared.lastNames.randomElement()!,
 number: DataStore.shared.numbers.randomElement()!,
 email: DataStore.shared.emails.randomElement()!)
 ]
 }
 }
 */
