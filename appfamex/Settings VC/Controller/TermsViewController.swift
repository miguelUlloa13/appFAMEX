//
//  TermsViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 22/01/23.
//

import UIKit

class TermsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var TermsView: UIView!
    
    @IBOutlet weak var TermsBGImg: UIImageView!
    
    @IBOutlet weak var TermsTextView: UITextView!
    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpTextView()
        
    }
    
    func setUpTextView () {
        
        TermsTextView.isEditable = false
        TermsTextView.text = "Hola"
        TermsTextView.font = .Futura(size: 20)
        TermsTextView.textColor = .blue
        
    }
    

}
