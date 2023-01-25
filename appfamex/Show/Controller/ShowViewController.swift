//
//  ShowViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 14/01/23.
//

import UIKit

class ShowViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var ShowMexView: UIView!
    @IBOutlet weak var FAMEXMapView: UIView!
    @IBOutlet weak var ShowMexBtnsView: UIView!
    @IBOutlet weak var ShowMexLblView: UIView!
    
        // Stack Views
    @IBOutlet weak var ShowMexSV: UIStackView!
    @IBOutlet weak var ShowMexBtnsSV: UIStackView!
    
        // Images
    @IBOutlet weak var ShowMexBGImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var FAMEXMapBtn: UIButton!
    @IBOutlet weak var ShowMexConferencesBtn: UIButton!
    @IBOutlet weak var ShowMexPavilionsBtn: UIButton!
    @IBOutlet weak var ShowMexChaletsBtn: UIButton!
    @IBOutlet weak var ShowMexExhibitionBtn: UIButton!
    
        // Labels
    @IBOutlet weak var ShowMexLbl: UILabel!
    
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
        
            // Mapa General
        FAMEXMapBtn.setTitle("MAPA\nGENERAL", for: .normal)
        FAMEXMapBtn.titleLabel?.font = UIFont(name: "Plateia", size: 30)
        FAMEXMapBtn.setTitleColor(.white, for: .normal)
        FAMEXMapBtn.titleLabel?.numberOfLines = 0
        FAMEXMapBtn.titleLabel?.textAlignment = .center
        FAMEXMapBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FAMEXMapBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Conferencias
        ShowMexConferencesBtn.setTitle("CONFERENCIAS", for: .normal)
        ShowMexConferencesBtn.titleLabel?.font = UIFont(name: "Plateia", size: 17)
        ShowMexConferencesBtn.setTitleColor(.link, for: .normal)
        ShowMexConferencesBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ShowMexConferencesBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Pabellones
        ShowMexPavilionsBtn.setTitle("PABELLONES", for: .normal)
        ShowMexPavilionsBtn.titleLabel?.font = UIFont(name: "Plateia", size: 17)
        ShowMexPavilionsBtn.setTitleColor(.link, for: .normal)
        ShowMexPavilionsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ShowMexPavilionsBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Chalets
        ShowMexChaletsBtn.setTitle("CHALETS", for: .normal)
        ShowMexChaletsBtn.titleLabel?.font = UIFont(name: "Plateia", size: 17)
        ShowMexChaletsBtn.setTitleColor(.link, for: .normal)
        ShowMexChaletsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ShowMexChaletsBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Exposicion Estatica
        ShowMexExhibitionBtn.setTitle("EXPOSICIÓN\nESTÁTICA", for: .normal)
        ShowMexExhibitionBtn.titleLabel?.font = UIFont(name: "Plateia", size: 17)
        ShowMexExhibitionBtn.setTitleColor(.link, for: .normal)
        ShowMexExhibitionBtn.titleLabel?.numberOfLines = 0
        ShowMexExhibitionBtn.titleLabel?.textAlignment = .center
        ShowMexExhibitionBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ShowMexExhibitionBtn.titleLabel?.minimumScaleFactor = 0.5
        
            
    }
    
    func setUpLabels() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = ShowMexLbl
        myTitle.Title = "E\nV\nE\nN\nT\nO"
        myTitle.Size = 50
        myTitle.HandlingText()
        
    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "EVENTO")
        myMenu.myView = ShowMexView
        myMenu.myBGImage = ShowMexBGImg
        myMenu.firstViewPosition = ShowMexView.transform
        
    }
    
    private func addChildMenuViewController() {
        
        let storyBoard = UIStoryboard(name: "Menu", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        self.addChild(menuVC)
        menuVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuVC.view)
        NSLayoutConstraint.activate([
            menuVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
            menuVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),   // Constraint derecho
            menuVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),          // Constraint superior
            menuVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)])    // Constraint inferior
        menuVC.didMove(toParent: self)
        self.view.sendSubviewToBack(menuVC.view)

    }
    
    // MARK: - Method Actions

}
