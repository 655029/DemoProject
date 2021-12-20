//
//  DemoTableViewCell.swift
//  DemoMap
//
//  Created by Ios Mac on 02/12/21.
//

import UIKit

class DemoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var myLbl: UILabel!
    @IBOutlet weak var selectDeselectBtn: UIButton!
    @IBOutlet weak var radioOnbutton: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    override func prepareForReuse() {

    }
    
}
