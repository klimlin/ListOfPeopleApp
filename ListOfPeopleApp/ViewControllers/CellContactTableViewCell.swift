//
//  CellContactTableViewCell.swift
//  ListOfPeopleApp
//
//  Created by MAcbook on 22.11.2022.
//

import UIKit

class CellContactTableViewCell: UITableViewCell {

    
    @IBOutlet var phoneLabel: UILabel!
    
    @IBOutlet var emailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
