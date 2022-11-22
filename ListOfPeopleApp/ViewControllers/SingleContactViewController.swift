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
    @IBOutlet var nameItem: UINavigationItem!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberLabel.text = person.number
        emailLabel.text = person.email
        nameItem.title = "\(person.firstName) \(person.lastName)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
