//
//  MenuTableViewCell.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 08/01/23.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

    // MARK: - Outlets
        // Images
    @IBOutlet weak var SectionImg: UIImageView!
    @IBOutlet weak var ChevronRightImg: UIImageView!
  
    // Label
    @IBOutlet weak var TitleSection: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        TitleSection.font = .Futura(size: 20)
        TitleSection.textColor = .white
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
