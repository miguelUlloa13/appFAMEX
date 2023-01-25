//
//  TutorialViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 16/01/23.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var TutorialView: UIView!
    @IBOutlet weak var TutorialImg: UIImageView!
    
    
    var TutorialImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        TutorialImg.image = TutorialImage
        setUpNavigatonController()
    }
    
    func setUpNavigatonController() {

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.02154482529, green: 0.2313018143, blue: 0.3553035259, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cerrar", style: .plain, target: self, action: #selector(btnClosePopUp))
        
    }
    
    @objc func btnClosePopUp () {
        
        dismiss(animated: true, completion: nil)
        
    }

}
