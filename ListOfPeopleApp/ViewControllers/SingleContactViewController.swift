//
//  SingleContactViewController.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 22.11.2022.
//

import UIKit

class SingleContactViewController: UIViewController {

    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = person.number
        emailLabel.text = person.email
        title = "\(person.firstName) \(person.lastName)"
    }

}
