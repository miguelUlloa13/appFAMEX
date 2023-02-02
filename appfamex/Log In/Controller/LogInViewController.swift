//
//  SigInViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/01/23.
//

import UIKit

class LogInViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var LogInView: UIView!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var LogoFAMEXView: UIView!
    @IBOutlet weak var EntryTextView: UIView!
    @IBOutlet weak var LineRefView: UIView!
    @IBOutlet weak var LineUsrView: UIView!
    @IBOutlet weak var LinePwView: UIView!
    @IBOutlet weak var SpaceView: UIView!
    @IBOutlet weak var BtnsView: UIView!
    
    // Stack Views
    @IBOutlet weak var LogInSV: UIStackView!
    @IBOutlet weak var BtnsSV: UIStackView!
    
        // Images
    @IBOutlet weak var LogInBGImg: UIImageView!
    @IBOutlet weak var LogoFAMEXImg: UIImageView!
    @IBOutlet weak var UsrIconImg: UIImageView!
    @IBOutlet weak var PwIconImg: UIImageView!
    
        // Scroll View
    @IBOutlet weak var LogInScrollView: UIScrollView!
    
        // Buttons
    @IBOutlet weak var LogInBtn: UIButton!
    @IBOutlet weak var SignUpBtn: UIButton!
    @IBOutlet weak var GuessUsrBtn: UIButton!
    @IBOutlet weak var SelectLanguageBtn: UIButton!
    
        // Text Fields
    @IBOutlet weak var UsrTF: UITextField!
    @IBOutlet weak var PwTF: UITextField!

    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Hola mundo")
        
        UsrTF.delegate = self
        PwTF.delegate = self
        
        
        setUpViews()
        setUpButtons()
        
    }
    
    // MARK: - Methods
    func setUpViews() {
        // Views
        LineRefView.backgroundColor = .clear
        
        // Text Fields
        UsrTF.placeholder = "Usuario"
        UsrTF.font = .Futura(size: 20)
        UsrTF.textColor = .white
        
        PwTF.placeholder = "Contraseña"
        PwTF.textColor = .white
        PwTF.font = .Futura(size: 20)
        
         
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
        
    }
    
    func setUpButtons() {
        // Buttons
        LogInBtn.round()
        LogInBtn.setTitle("Log In", for: .normal)
        LogInBtn.titleLabel?.font = UIFont(name: "Futura", size: 20)
        LogInBtn.setTitleColor(.white, for: .normal)
        LogInBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        LogInBtn.titleLabel?.minimumScaleFactor = 0.5
        
        // SignUpBtn.round()
        SignUpBtn.setTitle("Registrarse", for: .normal)
        SignUpBtn.titleLabel?.font = UIFont(name: "Futura", size: 20)
        SignUpBtn.setTitleColor(.white, for: .normal)
        SignUpBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        SignUpBtn.titleLabel?.minimumScaleFactor = 0.5

        GuessUsrBtn.round()
        GuessUsrBtn.setTitle("Usuario Invitado", for: .normal)
        GuessUsrBtn.titleLabel?.font = UIFont(name: "Futura", size: 20)
        GuessUsrBtn.setTitleColor(.link, for: .normal)
        GuessUsrBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        GuessUsrBtn.titleLabel?.minimumScaleFactor = 0.5
    }
    
    // MARK: - Method Actions
        // Method to hide keyboard when tap outside
    @objc private func hideKeyboard() {
        
        self.view.endEditing(true)
        
    }
    
    @IBAction func tappedSignUpBtn(_ sender: UIButton) {
        
        performSegue(withIdentifier: "signUpSegue", sender: self)
        
    }

}

    // MARK: - UITextFieldDelegate
extension LogInViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        UsrTF.resignFirstResponder()
        PwTF.resignFirstResponder()
        
        return true
        
    }

}
