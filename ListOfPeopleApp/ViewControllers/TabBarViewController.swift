//
//  TabBarViewController.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 29.11.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        
        guard let contactListVC = viewControllers?.first as? PersonsListViewController else { return }
        guard let exmVC = viewControllers?.last as? ExampleListViewController else { return }


        let persons = Person.getContactList()
        contactListVC.contactList = persons
        exmVC.persons = persons
    }
    
}
