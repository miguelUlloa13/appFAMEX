//
//  SignUpViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/01/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var SignUpView: UIView!
    @IBOutlet weak var LogoFAMEXView: UIView!
    @IBOutlet weak var EntryTextView: UIView!
    @IBOutlet weak var SpaceView: UIView!
    @IBOutlet weak var BtnView: UIView!
    @IBOutlet weak var UsrView: UIView!
    @IBOutlet weak var PwView: UIView!
    @IBOutlet weak var VfyPwView: UIView!
    @IBOutlet weak var LineUsrView: UIView!
    @IBOutlet weak var LinePwView: UIView!
    @IBOutlet weak var LineVfyPwView: UIView!
    
        // Stack Views
    @IBOutlet weak var SignUpSV: UIStackView!
    @IBOutlet weak var EntryTextSV: UIStackView!
    
        // Images
    @IBOutlet weak var SignUpBGImg: UIImageView!
    @IBOutlet weak var LogoFAMEXImg: UIImageView!
    @IBOutlet weak var UsrIconImg: UIImageView!
    @IBOutlet weak var PwIconImg: UIImageView!
    @IBOutlet weak var VfyPwImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var SignUpBtn: UIButton!
    
        // Text Fields
    @IBOutlet weak var UsrTFSignUp: UITextField!
    @IBOutlet weak var PwTFSignUp: UITextField!
    @IBOutlet weak var VfyPwTFSignUp: UITextField!
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        
        UsrTFSignUp.delegate = self
        PwTFSignUp.delegate = self
        VfyPwTFSignUp.delegate = self
        
        setUpTextFields()
        setUpButtons()
        
    }
    
    // MARK: - Methods
    func setUpTextFields() {
        
        // Text Fields
        UsrTFSignUp.placeholder = "Usuario"
        UsrTFSignUp.font = UIFont(name: "Futura", size: 20)
        UsrTFSignUp.textColor = .white
        PwTFSignUp.placeholder = "Contraseña"
        PwTFSignUp.textColor = .white
        PwTFSignUp.font = UIFont(name: "Futura", size: 20)
        VfyPwTFSignUp.placeholder = "Confirmar contraseña"
        VfyPwTFSignUp.textColor = .white
        VfyPwTFSignUp.font = UIFont(name: "Futura", size: 20)
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        
    }
    
    func setUpButtons() {

        SignUpBtn.round()
        SignUpBtn.setTitle("Registrarse", for: .normal)
        SignUpBtn.titleLabel?.font = .Plateia(size: 20)
        
    }
    
    // MARK: - Method Actions
    @objc private func hideKeyboard() {
        
        self.view.endEditing(true)
        
    }

}

// MARK: - UITextFieldDelegate
extension SignUpViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UsrTFSignUp.resignFirstResponder()
        PwTFSignUp.resignFirstResponder()
        VfyPwTFSignUp.resignFirstResponder()
        
        return true
    }

}
