//
//  ProfileCollectionViewCell.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 24/01/23.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ProfileCVCView: UIView!
    
    @IBOutlet weak var ProfileCVCImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ProfileCVCView.backgroundColor = .clear
        
    }

}
