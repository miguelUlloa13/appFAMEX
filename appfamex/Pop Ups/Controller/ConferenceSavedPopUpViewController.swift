//
//  ConferenceSavedPopUpViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import UIKit

final class ConferenceSavedPopUpViewController: UIViewController {
    
    @IBOutlet weak var ConferenceSavedPopUpView: UIView!
    @IBOutlet weak var BackGroundSavedImgView: UIView!
    
    @IBOutlet weak var SavedImg: UIImageView!
    
    @IBOutlet weak var SavedLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        BackGroundSavedImgView.layer.cornerRadius = 20
        SavedLbl.text = "Se agregó a Mi Itinerario"
        SavedLbl.textAlignment = .center
        SavedLbl.adjustsFontSizeToFitWidth = true
        SavedLbl.minimumScaleFactor = 0.5
        
    }
    

}
