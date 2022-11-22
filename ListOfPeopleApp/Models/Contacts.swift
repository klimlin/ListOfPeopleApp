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
