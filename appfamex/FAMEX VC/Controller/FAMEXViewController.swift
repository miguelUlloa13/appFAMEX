//
//  FAMEXViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 08/01/23.
//

import UIKit

class FAMEXViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var FAMEXView: UIView!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var AboutFamexView: UIView!
    @IBOutlet weak var WhyMexicoView: UIView!
    @IBOutlet weak var PreviousFAMEXView: UIView!
    @IBOutlet weak var FamexVerticalView: UIView!
    @IBOutlet weak var ButtonView: UIView!
    @IBOutlet weak var FAMEXAboutContainerView: UIView!
    @IBOutlet weak var WhatIsFAMEXView: UIView!
    @IBOutlet weak var HistoryFamexView: UIView!
    @IBOutlet weak var ObjectivesFAMEXView: UIView!
    @IBOutlet weak var YearsFAMEXView: UIView!
    @IBOutlet weak var ExhibitorsFAMEXView: UIView!
    @IBOutlet weak var AircraftFAMEXView: UIView!
    @IBOutlet weak var B2BMeetingFAMEXView: UIView!
    @IBOutlet weak var VisitorsFAMEXView: UIView!
    @IBOutlet weak var CountriesFAMEXView: UIView!
    @IBOutlet weak var FirstYearView: UIView!
    @IBOutlet weak var SecondYearView: UIView!
    @IBOutlet weak var ThirdYearView: UIView!
    @IBOutlet weak var ExhibitorsFAMEXImg: UIView!
    @IBOutlet weak var ExhibitorsFAMEXFirstYearView: UIView!
    @IBOutlet weak var ExhibitorsFAMEXSecondYearView: UIView!
    @IBOutlet weak var AircraftFAMEXImgView: UIView!
    @IBOutlet weak var AircraftFAMEXFirstYearView: UIView!
    @IBOutlet weak var AircraftFAMEXSecondYearView: UIView!
    @IBOutlet weak var B2BMeetingFAMEXImgView: UIView!
    @IBOutlet weak var B2BMeetingFAMEXFirstYearView: UIView!
    @IBOutlet weak var B2BMeetingFAMEXSecondYearView: UIView!
    @IBOutlet weak var VisitorsFAMEXImgView: UIView!
    @IBOutlet weak var VisitorsFAMEXFirstYearView: UIView!
    @IBOutlet weak var VisitorsFAMEXSecondYearView: UIView!
    @IBOutlet weak var CountriesFAMEXImgView: UIView!
    @IBOutlet weak var CountriesFAMEXFirstYearView: UIView!
    @IBOutlet weak var CountriesFAMEXSecondYearView: UIView!
    
    // Images
    @IBOutlet weak var FAMEXBGImg: UIImageView!
    @IBOutlet weak var FAMEXVerticalImg: UIImageView!
    @IBOutlet weak var WhiteGradientColorImg: UIImageView!
    @IBOutlet weak var ExhibitorsIconImg: UIImageView!
    @IBOutlet weak var AircraftIconImg: UIImageView!
    @IBOutlet weak var B2BMeetingIconImg: UIImageView!
    @IBOutlet weak var VisitorsIconImg: UIImageView!
    @IBOutlet weak var CountriesIconImg: UIImageView!
    
        // Scroll Views
    @IBOutlet weak var FAMEXScrollView: UIScrollView!
    @IBOutlet weak var AboutFAMEXScrollView: UIScrollView!
    
        // Stack Views
    @IBOutlet weak var FAMEXSV: UIStackView!
    @IBOutlet weak var AboutFAMEXSV: UIStackView!
    @IBOutlet weak var PreviousFAMEXSV: UIStackView!
    @IBOutlet weak var YearsFAMEXSV: UIStackView!
    @IBOutlet weak var ExhibitorsFAMEXSV: UIStackView!
    @IBOutlet weak var AircraftFAMEXSV: UIStackView!
    @IBOutlet weak var B2BMeetingFAMEXSV: UIStackView!
    @IBOutlet weak var VisitorsFAMEXSV: UIStackView!
    @IBOutlet weak var CountriesFAMEXSV: UIStackView!
    
        // Labels
    @IBOutlet weak var WhatIsFAMEXTitleLbl: UILabel!
    @IBOutlet weak var WhatIsFAMEXTextLbl: UILabel!
    @IBOutlet weak var HistoryFAMEXTitleLbl: UILabel!
    @IBOutlet weak var HistoryFAMEXTextLbl: UILabel!
    @IBOutlet weak var ObjectivesFAMEXTitleLbl: UILabel!
    @IBOutlet weak var ObjectivesFAMEXTextLbl: UILabel!
    @IBOutlet weak var WhyMexicoTitleLbl: UILabel!
    @IBOutlet weak var WhyMexicoTextLbl: UILabel!
    @IBOutlet weak var FirstYearLbl: UILabel!
    @IBOutlet weak var SecondYearLbl: UILabel!
    @IBOutlet weak var ThirdYearLbl: UILabel!
    @IBOutlet weak var ExhibitorsFAMEXLbl: UILabel!
    @IBOutlet weak var FirstYearExhibitorsFAMEXLbl: UILabel!
    @IBOutlet weak var SecondYearExhibitorsFAMEXLbl: UILabel!
    @IBOutlet weak var AircraftFAMEXLbl: UILabel!
    @IBOutlet weak var FirstYearAircraftFAMEXLbl: UILabel!
    @IBOutlet weak var SecondYearAircraftFAMEXLbl: UILabel!
    @IBOutlet weak var B2BMeetingLbl: UILabel!
    @IBOutlet weak var FirstYearB2BMeetingLbl: UILabel!
    @IBOutlet weak var SecondYearB2BMeetingLbl: UILabel!
    @IBOutlet weak var VisitorsFAMEXLbl: UILabel!
    @IBOutlet weak var FirstYearVisitorsFAMEXLbl: UILabel!
    @IBOutlet weak var SecondYearVisitorsFAMEXLbl: UILabel!
    @IBOutlet weak var CountriesFAMEXLbl: UILabel!
    @IBOutlet weak var FirstYearCountriesFAMEXLbl: UILabel!
    @IBOutlet weak var SecondYearCountriesFAMEXLbl: UILabel!
    
        // Buttons
    @IBOutlet weak var PastEditionsFAMEX: UIButton!
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FAMEX"
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Plateia", size: 25)!, NSAttributedString.Key.foregroundColor:UIColor.white]

        setUpLabels()
        setUpViews()
        setUpButton()
        addChildMenuViewController()
        setUpMenu()
        
    }

    // MARK: - Methods
    
    func setUpLabels() {
        
        let myTitleText = TitleTextFont()
        let myBodytext = BodyTextFont()
        
            // Title: QUE ES?
        myTitleText.Label = WhatIsFAMEXTitleLbl
        myTitleText.Title = "¿QUÉ ES?"
        myTitleText.HandlingText()
        
            // Body: QUE ES?
        myBodytext.Label = WhatIsFAMEXTextLbl
        myBodytext.Title = "La Feria Aeroespacial México (FAMEX), es un evento organizado por la Secretaria de la Defensa Nacional (SEDENA) a través de la Fuerza Aérea Mexicana que integra actividades del ámbito aeronáutico civil, comercial, militar y de defensa."
        myBodytext.HandlingText()
        
            // Title: Historia
        myTitleText.Label = HistoryFAMEXTitleLbl
        myTitleText.Title = "HISTORIA"
        myTitleText.HandlingText()
        
            // Body: Historia
        myBodytext.Label = HistoryFAMEXTextLbl
        myBodytext.Title = "La primera edición fue en el año 2015, con la finalidad de impulsar a México en el desarrollo económico del sector aeronáutico nacional, el responsable de la planeación, organización y materialización del evento fue el Comité Organizador."
        myBodytext.HandlingText()
        
            // Title: Objetivos
        myTitleText.Label = ObjectivesFAMEXTitleLbl
        myTitleText.Title = "OBJETIVOS"
        myTitleText.HandlingText()

            // Body: Objetivos
        myBodytext.Label = ObjectivesFAMEXTextLbl
        myBodytext.Title = "Reunir a los mejores lideres de la industria y servicio de la aviación para favorecer el intercambio comercial e impulsar el crecimiento de la industria aeroespacial en distintas regiones del país."
        myBodytext.HandlingText()
        
            // Title: Por que Mexico?
        myTitleText.Label = WhyMexicoTitleLbl
        myTitleText.Title = "¿POR QUÉ MÉXICO?"
        myTitleText.HandlingText()
        
            // Body: Por que Mexico?
        myTitleText.Label = WhyMexicoTextLbl
        myTitleText.Title = "EVOLUCIÓN DE LA FERIA AEROESPACIAL EN MÉXICO"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Years: 2015, 2019, 2023
        myTitleText.Label = FirstYearLbl
        myTitleText.Title = "2015"
        myTitleText.Size = 25
        myTitleText.HandlingText()
        
        myTitleText.Label = SecondYearLbl
        myTitleText.Title = "2019"
        myTitleText.Size = 25
        myTitleText.HandlingText()
        
        myTitleText.Label = ThirdYearLbl
        myTitleText.Title = "2023"
        myTitleText.Size = 25
        myTitleText.HandlingText()
        
            // Expositores
        myBodytext.Label = ExhibitorsFAMEXLbl
        myBodytext.Title = "Expositores"
        myBodytext.Size = 15
        myBodytext.HandlingText()
        
            // Expositores: 240
        myTitleText.Label = FirstYearExhibitorsFAMEXLbl
        myTitleText.Title = "240"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Expositores: 505
        myTitleText.Label = SecondYearExhibitorsFAMEXLbl
        myTitleText.Title = "505"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Aeronavez
        myBodytext.Label = AircraftFAMEXLbl
        myBodytext.Title = "Aeronavez"
        myBodytext.Size = 15
        myBodytext.HandlingText()
        
            // Aeronavez: 32
        myTitleText.Label = FirstYearAircraftFAMEXLbl
        myTitleText.Title = "32"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Aeronavez: 48
        myTitleText.Label = SecondYearAircraftFAMEXLbl
        myTitleText.Title = "48"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // B2B Meetings
        myBodytext.Label = B2BMeetingLbl
        myBodytext.Title = "B2B Meetings"
        myBodytext.Size = 15
        myBodytext.HandlingText()
        
            // B2B Meetings: 3500
        myTitleText.Label = FirstYearB2BMeetingLbl
        myTitleText.Title = "3500"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // B2B Meetings: 4500
        myTitleText.Label = SecondYearB2BMeetingLbl
        myTitleText.Title = "4500"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Visitantes
        myBodytext.Label = VisitorsFAMEXLbl
        myBodytext.Title = "Visitantes"
        myBodytext.Size = 15
        myBodytext.HandlingText()
        
            // Visitantes: 32000
        myTitleText.Label = FirstYearVisitorsFAMEXLbl
        myTitleText.Title = "32000"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Visitantes: 45000
        myTitleText.Label = SecondYearVisitorsFAMEXLbl
        myTitleText.Title = "45000"
        myTitleText.Size = 20
        myTitleText.HandlingText()

            // Países
        myBodytext.Label = CountriesFAMEXLbl
        myBodytext.Title = "Países"
        myBodytext.Size = 15
        myBodytext.HandlingText()
        
            // Países: 16
        myTitleText.Label = FirstYearCountriesFAMEXLbl
        myTitleText.Title = "16"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
            // Países: 35
        myTitleText.Label = SecondYearCountriesFAMEXLbl
        myTitleText.Title = "35"
        myTitleText.Size = 20
        myTitleText.HandlingText()
        
    }
    
    func setUpViews() {
        WhatIsFAMEXView.layer.cornerRadius = 20
        WhatIsFAMEXView.backgroundColor = .green.withAlphaComponent(0.3)
        
        HistoryFamexView.layer.cornerRadius = 20
        HistoryFamexView.backgroundColor = .white.withAlphaComponent(0.3)
        
        ObjectivesFAMEXView.layer.cornerRadius = 20
        ObjectivesFAMEXView.backgroundColor = .red.withAlphaComponent(0.3)
    }
    
    func setUpButton() {
        
        PastEditionsFAMEX.round()
        PastEditionsFAMEX.setTitle("  EDICIONES\n  PASADAS", for: .normal)
        PastEditionsFAMEX.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        PastEditionsFAMEX.setTitleColor(.white, for: .normal)
        PastEditionsFAMEX.titleLabel?.numberOfLines = 0
        PastEditionsFAMEX.titleLabel?.textAlignment = .center
        PastEditionsFAMEX.titleLabel?.adjustsFontSizeToFitWidth = true
        PastEditionsFAMEX.titleLabel?.minimumScaleFactor = 0.5
        
    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "FAMEX")
        myMenu.myView = FAMEXView
        myMenu.myBGImage = FAMEXBGImg
        myMenu.firstViewPosition = FAMEXView.transform
        
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
    
    @IBAction func tappedPastEditionsFAMEXBtn(_ sender: UIButton) {
        
        if let url = URL(string: "https://www.f-airmexico.com.mx/galeriashow2019.html") {
              if #available(iOS 10, *){
                  UIApplication.shared.open(url)
              }else{
                  UIApplication.shared.openURL(url)
              }
        }
        
    }

}
