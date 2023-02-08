//
//  PopUpModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/02/23.
//

import Foundation
import UIKit

class PopUpModel {
    
    // MARK: - Properties
    
    // MARK: - Methods
    
        // Metodo para mostrar el Pop Up Conference Saved
    public func showSavedPopUp (myViewController: UIViewController) -> UIView {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "ConferenceSavedPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "ConferenceSavedPopUpVC") as! ConferenceSavedPopUpViewController

        myViewController.addChild(popUpVC)
        
        popUpVC.view.translatesAutoresizingMaskIntoConstraints = false
        myViewController.view.addSubview(popUpVC.view)
        popUpVC.view.anchor(top: .none, paddingTop: .zero , bottom: myViewController.view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 5, left: myViewController.view.leftAnchor, paddingLeft: 70, right: myViewController.view.rightAnchor, paddingRight: 75, width: 0, height: 55)
        popUpVC.view.layer.cornerRadius = 23
        popUpVC.view.clipsToBounds = true
        popUpVC.didMove(toParent: myViewController)
        myViewController.view.bringSubviewToFront(popUpVC.view)
        
        return popUpVC.view
        
    }
}
