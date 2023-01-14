//
//  MenuModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 11/01/23.
//

import Foundation
import UIKit

class MenuModel {
    
    // Note: class to use obj function
    
    // MARK: - Properties
    
        // Section Title, Section Segue, Section Image
    typealias menuPropertiesTuple = (title: String, segueIdentifier: String, image: String)

    var myView: UIView = UIView()                           // View that moves
    var isOpenMenu: Bool = false                            // Flag Menu
    let screen:CGRect = UIScreen.main.bounds                //
    var firstViewPosition: CGAffineTransform = CGAffineTransform()
    var myBGImage: UIImageView = UIImageView()
    
    var navBar = UINavigationController()
    var navItem = UINavigationItem()
    
    let menuSections: [menuPropertiesTuple] = [
        ("Inicio", "HomeSegue", "HomeIconImg"),                       // Home
        ("FAMEX", "FAMEXSegue", "FAMEXIconImg"),                        // FAMEX
        ("FRANCIA", "FRANCESegue", "FranceIconImg"),                   // France
        ("Evento", "ShowSegue", "ShowIconImg"),                       // Show
        ("Mi Itinerario", "ItinerarioSegue", "ItineraryIconImg"),       // Itinerary
        ("Restaurantes", "RestaurantesSegue", "RestaurantsIconImg"),    // Restaurants
        ("Espectáculo Aéreo", "EspectAerSegue", "AirShowIconImg"),      // Air Show
        ("FAMEX EN MUMA", "MUMASegue", "MUMAIconImg"),                  // MUMA
        ("Accesos P.C.D", "AccesSegue", "PWDAccesIconImg"),             // PWD Accesibility (Accesibilty for Person with Disabilities)
        ("Sanitización", "SanitizacionSegue", "SanitizationIconImg"),   // Sanitization
        ("PRE-FAMEX", "PreparateSegue", "GetReadyIconImg"),             // Get Ready FAMEX
        ("Configuración", "ConfigSegue", "SettingIconImg"),             // Settings
    ]
    
    // MARK: - Methods
    
        // Method to show the Menu
    func showMenu() {
        
        myView.layer.cornerRadius = 40
        myBGImage.layer.cornerRadius = myView.layer.cornerRadius
        
        let x = screen.width * 0.8
        let originalTransform = myView.transform
        let scaledTransform = originalTransform.scaledBy(x: 0.8, y: 0.8)
        let scaledAndTranslatedTransform = scaledTransform.translatedBy(x: x, y: 0)
        UIView.animate(withDuration: 0.7) {
            self.myView.transform = scaledAndTranslatedTransform
            
        }
        
    }
    
        // Method to hide DE mENU
    func closeMenu() {
        
        UIView.animate(withDuration: 0.7) {
            self.myView.transform = self.firstViewPosition
            self.myView.layer.cornerRadius = 0
            self.myBGImage.layer.cornerRadius = self.myView.layer.cornerRadius
        }
        
    }
    
        // Method to custom the Navigation Bar
    func customNavigationBar(viewTitle: String) {
    
        navBar.navigationBar.barTintColor = #colorLiteral(red: 0.07122091204, green: 0.05044277757, blue: 0.1986504793, alpha: 1)
        navBar.navigationBar.barStyle = .black
        
        navItem.title = viewTitle
        navBar.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Plateia", size: 25)!, NSAttributedString.Key.foregroundColor:UIColor.white]
        
        navItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "HamburguerBtnImg")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(TappedHamburguerBtn))
    }
    

    // MARK: - Method Actions
        // Hamburguer Button action
    @objc func TappedHamburguerBtn () {
        
        if isOpenMenu == false {
            showMenu()
            isOpenMenu = true
        }else if isOpenMenu == true {
            closeMenu()
            isOpenMenu = false
        }
    }
    
    
    
}
