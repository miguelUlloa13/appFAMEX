//
//  FranceStaticExhibitionMenuViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 24/01/23.
//

import UIKit

class FranceStaticExhibitionMenuViewController: UIViewController {

    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var FSEMenuView: UIView!
    @IBOutlet weak var FSEMenuBlockOneView: UIView!
    @IBOutlet weak var FSEMenuBlockTwoView: UIView!
    @IBOutlet weak var FSEMenuBlockThreeView: UIView!
    
        // Images
    @IBOutlet weak var FSEMenuBGImg: UIImageView!
    
        // Stack View
    @IBOutlet weak var FSEMenuSV: UIStackView!
    
        // Labels
    @IBOutlet weak var FSEMenuTitleLbl: UILabel!
    @IBOutlet weak var FSEMenuLbl: UILabel!
    @IBOutlet weak var FSEMenuBlockOneLbl: UILabel!
    @IBOutlet weak var FSEMenuBlockTwoLbl: UILabel!
    @IBOutlet weak var FSEMenuBlockThreeLbl: UILabel!
    
    
    // Buttons
    @IBOutlet weak var FSEMenuBlockOneBtn: UIButton!
    @IBOutlet weak var FSEMenuBlockTwoBtn: UIButton!
    @IBOutlet weak var FSEMenuBlockThreeBtn: UIButton!
    
    
    // MARK: - Properties
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpLabels()
        setUpViews()
      
    }
    
    // MARK: - Methods
    
    func setUpLabels() {
        
        let myTitle = TitleTextFont()
        
            // Label Exposicion Estatica
        myTitle.Label = FSEMenuLbl
        myTitle.Title = "E\nX\nP\nO\nS\nI\nC\nI\nÓ\nN\n \nE\nS\nT\nÁ\nT\nI\nC\nA"
        myTitle.Size = 40
        myTitle.HandlingText()
        
            // Label PARA VISITAR LAS AERONAVES...
        myTitle.Label = FSEMenuTitleLbl
        myTitle.Title = "PARA VISITAR LAS AERONAVES EN LA FERIA CONSULTE SU UBICACION EN EL MAPA GENERAL"
        myTitle.Size = 15
        myTitle.HandlingText()
        
            // Bloque 1
        myTitle.Label = FSEMenuBlockOneLbl
        myTitle.Title = "BLOQUE 1"
        myTitle.Size = 30
        myTitle.HandlingText()
        
            // Bloque 1
        myTitle.Label = FSEMenuBlockTwoLbl
        myTitle.Title = "BLOQUE 2"
        myTitle.Size = 30
        myTitle.HandlingText()
            
            // Bloque 1
        myTitle.Label = FSEMenuBlockThreeLbl
        myTitle.Title = "BLOQUE 3"
        myTitle.Size = 30
        myTitle.HandlingText()
        
    }
    
    func setUpViews() {
        
        FSEMenuBlockOneView.layer.cornerRadius = 20
        
        FSEMenuBlockTwoView.layer.cornerRadius = 20
        
        FSEMenuBlockThreeView.layer.cornerRadius = 20
        
    }
    
    // MARK: - Method Actions
    

}
