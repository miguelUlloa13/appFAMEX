//
//  ItineraryViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 14/01/23.
//

import UIKit

class ItineraryViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var ItineraryView: UIView!
    @IBOutlet weak var ItineraryProfileImgView: UIView!
    @IBOutlet weak var ShareBtnView: UIView!
    @IBOutlet weak var ConferenceDaysView: UIView!
    @IBOutlet weak var ConferenceView: UIView!
    
        // Stack Views
    @IBOutlet weak var ItinerarySV: UIStackView!
    
        // Images
    @IBOutlet weak var ItineraryBGImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var ShareBtn: UIButton!
    
        // Segmented Control
    @IBOutlet weak var ConferenceDaysSC: UISegmentedControl!
    
        // Table View
    @IBOutlet weak var ConferenceTV: UITableView!
    
        
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildMenuViewController()
        setUpMenu()

    }
    
    // MARK: - Methods
    
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "MI ITINERARIO")
        myMenu.myView = ItineraryView
        myMenu.myBGImage = ItineraryBGImg
        myMenu.firstViewPosition = ItineraryView.transform
        
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

}
