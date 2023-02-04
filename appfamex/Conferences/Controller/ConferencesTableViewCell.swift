//
//  ConferencesTableViewCell.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 03/02/23.
//

import UIKit

class ConferencesTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var ConferencesTVCellView: UIView!
    
        // Labels
    @IBOutlet weak var ConferenceTitle: UILabel!
    @IBOutlet weak var ConferenceTime: UILabel!
    @IBOutlet weak var ConferenceCountryLbl: UILabel!
    
        // Images
    @IBOutlet weak var infoBtn: UIButton!
    @IBOutlet weak var SaveBtn: UIButton!
    
        // Buttons
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
