//
//  FirstPopUpViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 15/01/23.
//

import UIKit

final class FirstPopUpViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var PopUpOneView: UIView!
    @IBOutlet weak var PopUpImgView: UIView!
    @IBOutlet weak var PopUpOneBarView: UIView!
    @IBOutlet weak var PopUpOneDescriptionView: UIView!
    
        // Images
    @IBOutlet weak var PopUpOneBGImg: UIImageView!
    @IBOutlet weak var PopUpOneImg: UIImageView!
    @IBOutlet weak var PopUpOneBarImg: UIImageView!
    
        // Stack view
    @IBOutlet weak var PopUpOneSV: UIStackView!
    
        // Label
    @IBOutlet weak var PopUpOneTitleLbl: UILabel!
    
        // Text View
    @IBOutlet weak var PopUpOneDescriptionTxtV: UITextView!
    
    // MARK: - Properties
    
    var PopUpOneTitle: String?
    var PopUpOneDescription: String?
    var PopUpOneImage: UIImage?
    var PopUpOneBarImage: UIImage?
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpLabels()
        setUpTextView()
        setUpImage()
        setUpNavigatonController()

    }
    
    // MARK: - Methods

    func setUpLabels () {
        
        let myTitleText = BodyTextFont()
        
        myTitleText.Label = PopUpOneTitleLbl
        myTitleText.Title = PopUpOneTitle
        myTitleText.Size = 30
        myTitleText.HandlingText()
        
    }
    
    func setUpTextView () {
        
        PopUpOneDescriptionTxtV.isEditable = false
        PopUpOneDescriptionTxtV.text = PopUpOneDescription
        PopUpOneDescriptionTxtV.font = .Futura(size: 20)
        PopUpOneDescriptionTxtV.textColor = .white
        
    }
    
    func setUpImage(){
        
        PopUpOneImg.image = PopUpOneImage
        PopUpOneImg.layer.cornerRadius = 10
        
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
