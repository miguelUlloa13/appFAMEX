//
//  DevelopersViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 23/01/23.
//

import UIKit

final class DevelopersViewController: UIViewController {
    
    @IBOutlet weak var DevsView: UIView!
    @IBOutlet weak var DevsBodyTextView: UIView!
    @IBOutlet weak var DevsInstutesImagesView: UIView!
    
    @IBOutlet weak var DevsBGImg: UIImageView!
    @IBOutlet weak var FirstInstituteImg: UIImageView!
    @IBOutlet weak var SecondInstituteImg: UIImageView!
    @IBOutlet weak var ThirsdInstituteImg: UIImageView!
    @IBOutlet weak var FourthInstituteImg: UIImageView!
    @IBOutlet weak var FifthInstituteImg: UIImageView!
    
    @IBOutlet weak var DevsSV: UIStackView!
    @IBOutlet weak var DevsInstutessSV: UIStackView!
    
    @IBOutlet weak var DevelopersTXTV: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "DESARROLLADORES"
        setUpNavigatonController()
        setUpTextView()
    }
    
    func setUpTextView () {
        
        DevelopersTXTV.isEditable = false
        DevelopersTXTV.text = "Hola"
        DevelopersTXTV.font = .Futura(size: 20)
        DevelopersTXTV.textColor = .white
        
    }
    
    func setUpNavigatonController() {

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.02154482529, green: 0.2313018143, blue: 0.3553035259, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cerrar", style: .plain, target: self, action: #selector(btnClosePopUp))
        
    }
    
    // MARK: - Method Actions
    
    @objc func btnClosePopUp () {
        
        dismiss(animated: true, completion: nil)
        
    }

}
