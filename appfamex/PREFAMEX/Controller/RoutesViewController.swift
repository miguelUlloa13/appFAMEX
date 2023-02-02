//
//  RoutesViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 22/01/23.
//

import UIKit

class RoutesViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var RoutesView: UIView!
    @IBOutlet weak var RoutesTitleView: UIView!
    @IBOutlet weak var RoutesContentView: UIView!
    @IBOutlet weak var RoutesLeftBarView: UIView!
    @IBOutlet weak var RoutesRightBarView: UIView!
    @IBOutlet weak var RoutesCirculationLblView: UIView!
    @IBOutlet weak var HotelsView: UIView!
    @IBOutlet weak var OutsideView: UIView!
    @IBOutlet weak var FinalView: UIView!
    @IBOutlet weak var HotelsTitleView: UIView!
    @IBOutlet weak var HotelsContentView: UIView!
    @IBOutlet weak var OutsideTitleView: UIView!
    @IBOutlet weak var OutsideContentView: UIView!
    @IBOutlet weak var FinalTitleView: UIView!
    @IBOutlet weak var FinalContentView: UIView!
    
        // Images
    @IBOutlet weak var RoutesBGImg: UIImageView!
    @IBOutlet weak var RoutesIconImg: UIImageView!
    
        // Stack Views
    @IBOutlet weak var RoutesSV: UIStackView!
    @IBOutlet weak var HotelsOutsideFinalSV: UIStackView!
    
        // Labels
    @IBOutlet weak var CirculationLbl: UILabel!
    @IBOutlet weak var HotelsLbl: UILabel!
    @IBOutlet weak var HotelsIconLbl: UILabel!
    @IBOutlet weak var LogoFAMEXOneLbl: UILabel!
    @IBOutlet weak var OutsideLbl: UILabel!
    @IBOutlet weak var MilitaryBaseIconLbl: UILabel!
    @IBOutlet weak var LogoFAMEXTwoLbl: UILabel!
    @IBOutlet weak var FinalLbl: UILabel!
    @IBOutlet weak var BlockOneLbl: UILabel!
    @IBOutlet weak var BlockTwoLbl: UILabel!
    @IBOutlet weak var BlockThreeLbl: UILabel!
    
        // Buttons
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
        setUpLabels()
    }
    
    // MARK: - Methods

    func setUpView() {
        
        HotelsTitleView.layer.cornerRadius = 10
        HotelsContentView.layer.cornerRadius = 10
        
        OutsideTitleView.layer.cornerRadius = 10
        OutsideContentView.layer.cornerRadius = 10
        
        FinalTitleView.layer.cornerRadius = 10
        FinalContentView.layer.cornerRadius = 10
        
        
    }
    
    func setUpLabels() {
        
        let myTitleText = TitleTextFont()
        
            // Title: CIRCULACIÓN
        myTitleText.Label = CirculationLbl
        myTitleText.Title = "C\nI\nR\nC\nU\nL\nA\nC\nI\nÓ\nN"
        myTitleText.Size = 40
        myTitleText.HandlingText()
        
            // Title: HOTELES
        myTitleText.Label = HotelsLbl
        myTitleText.Title = "H\nO\nT\nE\nL\nE\nS"
        myTitleText.Size = 20
        myTitleText.HandlingText()
            
            // Title: HOTEL
        myTitleText.Label = HotelsIconLbl
        myTitleText.Title = "HOTEL"
        myTitleText.Size = 14
        myTitleText.HandlingText()
        
            // Title: RECINTO FERIAL
        myTitleText.Label = LogoFAMEXOneLbl
        myTitleText.Title = "RECINTO\nFERIAL"
        myTitleText.Size = 14
        myTitleText.HandlingText()
        
            // Title: EXTERNO
        myTitleText.Label = OutsideLbl
        myTitleText.Title = "E\nX\nT\nE\nR\nN\nO"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Title: BASE MILITAR
        myTitleText.Label = MilitaryBaseIconLbl
        myTitleText.Title = "BASE\nMILITAR"
        myTitleText.Size = 14
        myTitleText.HandlingText()
        
            // Title: RECINTO FERIAL
        myTitleText.Label = LogoFAMEXTwoLbl
        myTitleText.Title = "RECINTO\nFERIAL"
        myTitleText.Size = 14
        myTitleText.HandlingText()
            
            // Title: FERIAL
        myTitleText.Label = FinalLbl
        myTitleText.Title = "F\nE\nR\nI\nA\nL"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Title: BLOQUE UNO
        myTitleText.Label = BlockOneLbl
        myTitleText.Title = "BLOQUE UNO"
        myTitleText.Size = 11
        myTitleText.HandlingText()
            
            // Title: BLOQUE DOS
        myTitleText.Label = BlockTwoLbl
        myTitleText.Title = "BLOQUE DOS"
        myTitleText.Size = 11
        myTitleText.HandlingText()
            
            // Title: BLOQUE TRES
        myTitleText.Label = BlockThreeLbl
        myTitleText.Title = "BLOQUE TRES"
        myTitleText.Size = 11
        myTitleText.HandlingText()
        
    }
    
    // MARK: - Method Actions

}
