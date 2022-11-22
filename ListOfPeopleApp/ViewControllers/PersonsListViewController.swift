//
//  PersonsListViewController.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 22.11.2022.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private var contactList = Person.getContactList()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let contact = contactList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(contact.firstName) \(contact.lastName)"
        cell.contentConfiguration = content
        return cell
    }
    

    
    // MARK: - Navigation

 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let singleContactVC = segue.destination as? SingleContactViewController else { return }
        singleContactVC.person = contactList[indexPath.row]
        
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarVC = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarVC.viewControllers else { return }
//
//        for viewController in viewControllers {
//            if let welcomeVC = viewController as? WelcomeViewController {
//                welcomeVC.user = user
//            } else if let quatationVC = viewController as? QuotationViewController {
//                quatationVC.user = user
//            } else if let navigationVC = viewController as? UINavigationController {
//                guard let userInfoVC = navigationVC.topViewController as? GeneralInfoViewController else {
//                    return
//                }
//                userInfoVC.user = user
//            }
//        }
//
//    }
    
//    func prepare2(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let secondListVC = segue.destination as? SecondListViewController else { return }
//        secondListVC.secondContactList = contactList
//
//    }
    

}
