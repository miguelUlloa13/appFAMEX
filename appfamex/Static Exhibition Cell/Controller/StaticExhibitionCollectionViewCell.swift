//
//  StaticExhibitionCollectionViewCell.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 24/01/23.
//

import UIKit

class StaticExhibitionCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var StaticExhibitionCVCellView: UIView!
    
    @IBOutlet weak var StaticExhibitionCVCellDescriptionLbl: UILabel!
    @IBOutlet weak var StaticExhibitionCVCellTitleLbl: UILabel!
    
    @IBOutlet weak var StaticExhibitionCVCellImage: UIImageView!
    
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle Method

    override func awakeFromNib() {
        super.awakeFromNib()
        
        StaticExhibitionCVCellImage.layer.cornerRadius = 20
        StaticExhibitionCVCellImage.contentMode = .scaleAspectFill
        
        StaticExhibitionCVCellView.layer.cornerRadius = 20
            
            // Titulo del avion (Nombre del avion)
        StaticExhibitionCVCellTitleLbl.font = UIFont(name: "Futura", size: 17)
        StaticExhibitionCVCellTitleLbl.numberOfLines = 0
        StaticExhibitionCVCellTitleLbl.textAlignment = .center
        StaticExhibitionCVCellTitleLbl.textColor = .link
        
            // Descripcion del avion
        StaticExhibitionCVCellDescriptionLbl.font = UIFont(name: "Futura", size: 13)
        StaticExhibitionCVCellDescriptionLbl.numberOfLines = 0
        StaticExhibitionCVCellDescriptionLbl.textAlignment = .left
        StaticExhibitionCVCellDescriptionLbl.textColor = .white
        
    }

}
