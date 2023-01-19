//
//  TutorialsModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 16/01/23.
//

import Foundation
import UIKit

class TutorialModel: MenuModel {
    
    var myTutorialImage: String?
    
    func setTutorial() {
        
        
        //navItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "QuestionMark")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(btnTutorial))
        
        navItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "questionmark.circle")?.withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(btnTutorial))
        
    }
    
    // Button accion
    @objc func btnTutorial () {
    
        let storyBoard = UIStoryboard(name: "Tutorial", bundle: nil)
        let firstpopupvc = storyBoard.instantiateViewController(identifier: "TutorialVC") as! TutorialViewController
        
        firstpopupvc.title = "Tutorial"
        firstpopupvc.TutorialImage = UIImage(named: myTutorialImage ?? "No Foto")
        
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: firstpopupvc)
        
        navBar.present(navBarOnModal, animated: true, completion: nil)

    }
    
    
}

