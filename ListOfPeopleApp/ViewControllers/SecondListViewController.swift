//
//  SecondListViewController.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 22.11.2022.
//

import UIKit

class SecondListViewController: UITableViewController {

    var secondContactList = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func changeOptional(for array: [Person]!) -> [Person] {
        guard let secondContactList: [Person] = array else {
            return secondContactList
        }
        return secondContactList
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        secondContactList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(secondContactList[section].firstName) \(secondContactList[section].lastName)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellContact", for: indexPath) as! CellContactTableViewCell
        
        let contact = secondContactList[indexPath.section]
        cell.phoneLabel.text = contact.number
        cell.emailLabel.text = contact.email

        return cell
    }

}
