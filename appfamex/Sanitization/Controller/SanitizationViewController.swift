//
//  SanitizationViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 17/01/23.
//

import UIKit

class SanitizationViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var SanitizationView: UIView!
    @IBOutlet weak var SanitizationPDFView: UIView!
    
        // Image
    @IBOutlet weak var SanitizationBGImg: UIImageView!
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    let myPDF = PDFModel()      // Object type PDFModel
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        myPDF.setUp(yourPDFView: SanitizationPDFView, PDFname: "SanitizationMap")
        setUpMenu()
        addChildMenuViewController()
        
    }
    
    // MARK: - Methods
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "SANITIZACIÓN")
        myMenu.myView = SanitizationView
        myMenu.myBGImage = SanitizationBGImg
        myMenu.firstViewPosition = SanitizationView.transform
        
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
