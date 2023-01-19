//
//  PWDAccesibilityViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 17/01/23.
//

import UIKit

class PWDAccesibilityViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var PWDAccesibilityView: UIView!
    @IBOutlet weak var PWDAccesibilityPDFView: UIView!
    
    @IBOutlet weak var PWDAccesibilityBGImg: UIImageView!
    
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    let myPDF = PDFModel()      // Object type PDFModel
    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myPDF.setUp(yourPDFView: PWDAccesibilityPDFView, PDFname: "PWDAccesibilityMap")
        setUpMenu()
        addChildMenuViewController()
        
    }
    
    // MARK: - Methods
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "ACCESOS P.C.D")
        myMenu.myView = PWDAccesibilityView
        myMenu.myBGImage = PWDAccesibilityBGImg
        myMenu.firstViewPosition = PWDAccesibilityView.transform
        
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
