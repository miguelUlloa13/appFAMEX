//
//  SettingsViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 20/01/23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var SettingsView: UIView!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var LanguageAndNotificationsView: UIView!
    @IBOutlet weak var FirstSpaceView: UIView!
    @IBOutlet weak var FaqsProblemsAndContactView: UIView!
    @IBOutlet weak var SecondView: UIView!
    @IBOutlet weak var AboutAndTermsView: UIView!
    @IBOutlet weak var NotificationsBtnView: UIView!
    
        // Stack Views
    @IBOutlet weak var SettingsSV: UIStackView!
    @IBOutlet weak var LanguageAndNotificationsSV: UIStackView!
    @IBOutlet weak var FaqsProblemsAndContactSV: UIStackView!
    @IBOutlet weak var AboutAndTermsSV: UIStackView!
    
        // Scroll View
    @IBOutlet weak var SettingsScrollView: UIScrollView!
    
        // Images
    @IBOutlet weak var SettingBGImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var LanguageBtn: UIButton!
    @IBOutlet weak var FaqsBtn: UIButton!
    @IBOutlet weak var ReportProblemsBtn: UIButton!
    @IBOutlet weak var ContactBtn: UIButton!
    @IBOutlet weak var AboutAppBtn: UIButton!
    @IBOutlet weak var TermsBtn: UIButton!
    
        // Labels
    @IBOutlet weak var NotificationsLbl: UILabel!
    
        // Switch
    @IBOutlet weak var NotificationsSwitch: UISwitch!
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpStackViews()
        setUpLabel()
        setUpButtons()

        addChildMenuViewController()
        setUpMenu()
        
    }
    
    // MARK: - Methods
    
    func setUpStackViews() {
        
        LanguageAndNotificationsSV.layer.cornerRadius = 10
        FaqsProblemsAndContactSV.layer.cornerRadius = 10
        AboutAndTermsSV.layer.cornerRadius = 10
        
    }
    
    func setUpLabel() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = NotificationsLbl
        myTitle.Title = "NOTIFICACIONES"
        myTitle.Size = 17
        myTitle.LineBreak = false
        myTitle.HandlingText()
        
    }
    
    func setUpButtons() {
        
        let sizetoFont: CGFloat = 17
        
        LanguageBtn.setTitle("LENGUAJE", for: .normal)
        LanguageBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        LanguageBtn.setTitleColor(.white, for: .normal)
        LanguageBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        LanguageBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FaqsBtn.setTitle("PREGUNTAS\nFRECUENTES", for: .normal)
        FaqsBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        FaqsBtn.setTitleColor(.white, for: .normal)
        FaqsBtn.titleLabel?.numberOfLines = 0
        FaqsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FaqsBtn.titleLabel?.minimumScaleFactor = 0.5
        
        ReportProblemsBtn.setTitle("REPORTAR UN\nPROBLEMA", for: .normal)
        ReportProblemsBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        ReportProblemsBtn.setTitleColor(.white, for: .normal)
        ReportProblemsBtn.titleLabel?.numberOfLines = 0
        ReportProblemsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ReportProblemsBtn.titleLabel?.minimumScaleFactor = 0.5
        
        ContactBtn.setTitle("CONTACTO", for: .normal)
        ContactBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        ContactBtn.setTitleColor(.white, for: .normal)
        ContactBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        ContactBtn.titleLabel?.minimumScaleFactor = 0.5
        
        AboutAppBtn.setTitle("SOBRE LA\nAPLICACIÓN", for: .normal)
        AboutAppBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        AboutAppBtn.setTitleColor(.white, for: .normal)
        AboutAppBtn.titleLabel?.numberOfLines = 0
        AboutAppBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        AboutAppBtn.titleLabel?.minimumScaleFactor = 0.5
        
        TermsBtn.setTitle("TERMINOS Y\nCONDICIONES", for: .normal)
        TermsBtn.titleLabel?.font = UIFont(name: "Plateia", size: sizetoFont)
        TermsBtn.setTitleColor(.white, for: .normal)
        TermsBtn.titleLabel?.numberOfLines = 0
        TermsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        TermsBtn.titleLabel?.minimumScaleFactor = 0.5
    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "CONFIGURACIÓN")
        myMenu.myView = SettingsView
        myMenu.myBGImage = SettingBGImg
        myMenu.firstViewPosition = SettingsView.transform
        
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
