//
//  TestTableViewCell.swift
//  DemoMap
//
//  Created by Ios Mac on 02/12/21.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImaeView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func populateUI(_ sender: Property) {
        myImaeView.image = UIImage(named: sender.image)
        myLabel.text = sender.name
    }
}
