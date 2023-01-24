//
//  AboutAppViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 23/01/23.
//

import UIKit

class AboutAppViewController: UIViewController {
    
        // Views
    @IBOutlet weak var AboutAppView: UIView!
    @IBOutlet weak var AboutAppTitleView: UIView!
    @IBOutlet weak var AboutAppFAMEXView: UIView!
    @IBOutlet weak var AboutAppFAMEXImgView: UIView!
    @IBOutlet weak var AboutAppYearsView: UIView!
    @IBOutlet weak var AboutAppVersionView: UIView!
    @IBOutlet weak var AboutAppDevelopersView: UIView!
    
        // Images
    @IBOutlet weak var AboutAppBGImg: UIImageView!
    @IBOutlet weak var AboutAppInfoImg: UIImageView!
    @IBOutlet weak var AboutAppFAMEXImg: UIImageView!
    
        // Stack View
    @IBOutlet weak var AboutAppSV: UIStackView!
    
        // Labels
    @IBOutlet weak var AboutAppTitleLbl: UILabel!
    @IBOutlet weak var AboutAppFAMEXLbl: UILabel!
    @IBOutlet weak var AboutAppYearsLbl: UILabel!
    @IBOutlet weak var AboutAppVersionLbl: UILabel!
    
        // Buttons
    @IBOutlet weak var AboutAppDevelopersBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpLabels()
        setUpButton()
        
    }
    
    func setUpLabels(){
        
        let myTitleText = TitleTextFont()
        
        myTitleText.Label = AboutAppTitleLbl
        myTitleText.Title = "SOBRE LA APLICACIÓN"
        myTitleText.HandlingText()
        
        myTitleText.Label = AboutAppFAMEXLbl
        myTitleText.Title = "FERIA AEROESPACIAL MÉXICO"
        myTitleText.HandlingText()
        
        myTitleText.Label = AboutAppYearsLbl
        myTitleText.Title = "2022-2023"
        myTitleText.HandlingText()
        
        myTitleText.Label = AboutAppVersionLbl
        myTitleText.Title = "VERSIÓN 1.0"
        myTitleText.HandlingText()
        
        
    }
    
    func setUpButton(){
        
        AboutAppDevelopersBtn.round()
        AboutAppDevelopersBtn.setTitle("DESARROLLADORES", for: .normal)
        AboutAppDevelopersBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        AboutAppDevelopersBtn.setTitleColor(.white, for: .normal)
        AboutAppDevelopersBtn.titleLabel?.textAlignment = .center
        AboutAppDevelopersBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        AboutAppDevelopersBtn.titleLabel?.minimumScaleFactor = 0.5
        
    }

}
