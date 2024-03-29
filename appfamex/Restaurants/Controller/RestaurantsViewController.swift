//
//  RestaurantsViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 14/01/23.
//

import UIKit

class RestaurantsViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var RestaurantsView: UIView!
    
        // Images
    @IBOutlet weak var RestaurantsBGImg: UIImageView!
    
        // Collection View
    @IBOutlet weak var RestaurantsCV: UICollectionView!
    
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
        
        myMenu.customNavigationBar(viewTitle: "RESTAURANTES")
        myMenu.myView = RestaurantsView
        myMenu.myBGImage = RestaurantsBGImg
        myMenu.firstViewPosition = RestaurantsView.transform
        
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
