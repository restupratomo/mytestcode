//
//  ListNewsTableViewCell.swift
//  MyTest
//
//  Created by Restu Suryo Pratomo on 18/05/21.
//

import UIKit

class ListNewsTableViewCell: UITableViewCell {
    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var newsContent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
