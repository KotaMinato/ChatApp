//
//  UserTableViewCell.swift
//  ChatApp
//
//  Created by minato on 2021/03/10.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var userAgeLabel: UILabel!
    
    @IBOutlet weak var userCityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
