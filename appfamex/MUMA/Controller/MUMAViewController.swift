//
//  MUMAViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 22/01/23.
//

import UIKit
import WebKit

class MUMAViewController: UIViewController {
    
    // MARK: - Outlets
    
        // View
    @IBOutlet weak var MUMAView: UIView!
    
        // Image
    @IBOutlet weak var MUMABGImg: UIImageView!
    
        // Web View
    @IBOutlet weak var MUMAWebView: WKWebView!
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        openWebPage()
        setUpMenu()
        addChildMenuViewController()
      
    }
    
    // MARK: - Methods
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "MUMA")
        myMenu.myView = MUMAView
        myMenu.myBGImage = MUMABGImg
        myMenu.firstViewPosition = MUMAView.transform
        
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
    
    func openWebPage() {
        
        let urlMUMA = "https://webobook.com/public/62e35877f7f4f4058c1e32f2,en#"
        
        MUMAWebView.load(URLRequest(url: URL(string: urlMUMA)!))
        
    }

}
