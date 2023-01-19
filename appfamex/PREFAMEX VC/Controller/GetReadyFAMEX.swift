//
//  PREFAMEXViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 18/01/23.
//

import UIKit

class GetReadyFAMEX: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var GetReadyFAMEXView: UIView!
    @IBOutlet weak var GetReadyFAMEXTitleView: UIView!
    @IBOutlet weak var LeftBarView: UIView!
    @IBOutlet weak var RightBarView: UIView!
    @IBOutlet weak var GetReadyFAMEXBtnsView: UIView!
    @IBOutlet weak var GetReadyFAMEXLblView: UIView!
    @IBOutlet weak var GetReadyFAMEXHotelsView: UIView!
    @IBOutlet weak var GetReadyFAMEXGetThereView: UIView!
    @IBOutlet weak var GetReadyFAMEXRoutesView: UIView!
    @IBOutlet weak var GetReadyFAMEXFAQsView: UIView!
    
        // Stack views
    @IBOutlet weak var GetReadyFAMEXSV: UIStackView!
    @IBOutlet weak var GetReadyFAMEXBtnsSV: UIStackView!
    
        // Images
    @IBOutlet weak var GetReadyFAMEXBGImg: UIImageView!
    @IBOutlet weak var GetReadyFAMEXIconImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var GetReadyFAMEXHotelsBtn: UIButton!
    @IBOutlet weak var GetReadyFAMEXGetThereBtn: UIButton!
    @IBOutlet weak var GetReadyFAMEXRoutesBtn: UIButton!
    @IBOutlet weak var GetReadyFAMEXFAQsBtn: UIButton!
    
        // Labels
    @IBOutlet weak var GetReadyFAMEXLbl: UILabel!
    
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpButtons()
        setUpLabels()
        addChildMenuViewController()
        setUpMenu()

    }
    
    // MARK: - Methods
    
    func setUpButtons() {
        
            // Hoteles
        GetReadyFAMEXHotelsBtn.setTitle("  HOTELES", for: .normal)
        GetReadyFAMEXHotelsBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        GetReadyFAMEXHotelsBtn.setTitleColor(.white, for: .normal)
        GetReadyFAMEXHotelsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        GetReadyFAMEXHotelsBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Como llegar?
        GetReadyFAMEXGetThereBtn.setTitle("  ¿CÓMO\n  LLEGAR?", for: .normal)
        GetReadyFAMEXGetThereBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        GetReadyFAMEXGetThereBtn.setTitleColor(.white, for: .normal)
        GetReadyFAMEXGetThereBtn.titleLabel?.numberOfLines = 0
        GetReadyFAMEXGetThereBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        GetReadyFAMEXGetThereBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Rutas
        GetReadyFAMEXRoutesBtn.setTitle("  RUTAS", for: .normal)
        GetReadyFAMEXRoutesBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        GetReadyFAMEXRoutesBtn.setTitleColor(.white, for: .normal)
        GetReadyFAMEXRoutesBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        GetReadyFAMEXRoutesBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Preguntas frecuentes?
        GetReadyFAMEXFAQsBtn.setTitle("PREGUNTAS\nFRECUENTES", for: .normal)
        GetReadyFAMEXFAQsBtn.titleLabel?.font = UIFont(name: "Plateia", size: 15)
        GetReadyFAMEXFAQsBtn.setTitleColor(.white, for: .normal)
        GetReadyFAMEXFAQsBtn.titleLabel?.numberOfLines = 0
        GetReadyFAMEXFAQsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        GetReadyFAMEXFAQsBtn.titleLabel?.minimumScaleFactor = 0.5
        
        
        /*
         
         FranceJobBtn.tag = 0
         FranceJobBtn.setAttributedTitle(attributeString1, for: .normal)
         FranceJobBtn.titleLabel?.numberOfLines = 0
         FranceJobBtn.titleLabel?.textAlignment = .center
         FranceJobBtn.titleLabel?.adjustsFontSizeToFitWidth = true
         FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
         
         FranceLeadersBtn.tag = 1
         FranceLeadersBtn.setAttributedTitle(attributeString2, for: .normal)
         FranceLeadersBtn.titleLabel?.numberOfLines = 0
         FranceLeadersBtn.titleLabel?.textAlignment = .center
         FranceLeadersBtn.titleLabel?.adjustsFontSizeToFitWidth = true
         FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
         
         FranceIDBtn.tag = 2
         FranceIDBtn.setAttributedTitle(attributeString3, for: .normal)
         FranceIDBtn.titleLabel?.numberOfLines = 0
         FranceIDBtn.titleLabel?.textAlignment = .center
         FranceIDBtn.titleLabel?.adjustsFontSizeToFitWidth = true
         FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
         
         FranceCommercialBtn.tag = 3
         FranceCommercialBtn.setAttributedTitle(attributeString4, for: .normal)
         FranceCommercialBtn.titleLabel?.numberOfLines = 0
         FranceCommercialBtn.titleLabel?.textAlignment = .center
         FranceCommercialBtn.titleLabel?.adjustsFontSizeToFitWidth = true
         FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
         
         */
        
    }
    
    func setUpLabels() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = GetReadyFAMEXLbl
        myTitle.Title = "P\nR\nE\n-\nF\nA\nM\nE\nX"
        myTitle.Size = 55
        myTitle.HandlingText()

    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "PRE-FAMEX")
        myMenu.myView = GetReadyFAMEXView
        myMenu.myBGImage = GetReadyFAMEXBGImg
        myMenu.firstViewPosition = GetReadyFAMEXView.transform
        
    }
    
    private func addChildMenuViewController() {
        
        let storyBoard = UIStoryboard(name: "Menu", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        self.addChild(menuVC)
        menuVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuVC.view)
        NSLayoutConstraint.activate([
            menuVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
            menuVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),   // Constraint derecho
            menuVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),          // Constraint superior
            menuVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)])    // Constraint inferior
        menuVC.didMove(toParent: self)
        self.view.sendSubviewToBack(menuVC.view)

    }
    
    // MARK: - Method Actions

}
