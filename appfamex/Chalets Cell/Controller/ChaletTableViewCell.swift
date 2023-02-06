//
//  ChaletTableViewCell.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 25/01/23.
//

import UIKit

class ChaletTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ChaletView: UIView!
    
    @IBOutlet weak var ChaletBGImg: UIImageView!
    @IBOutlet weak var ChaletCompanyImg: UIImageView!
    
    @IBOutlet weak var ChaletCompanyNameLbl: UILabel!
    @IBOutlet weak var ChaletCompanyDescriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        ChaletView.backgroundColor = .clear
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
