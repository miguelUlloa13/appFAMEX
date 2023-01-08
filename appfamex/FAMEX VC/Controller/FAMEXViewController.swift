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
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "FAMEX"
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Plateia", size: 25)!, NSAttributedString.Key.foregroundColor:UIColor.white]

        setUpLabels()
        setUpViews()
        setUpButton()
        
    }

    // MARK: - Methods
    
    func setUpLabels() {
        
        labelshandleFont(Label: WhatIsFAMEXTitleLbl, Title: "¿QUÉ ES?", Font: .Plateia(size: 30)!, JumpLine: false)
        labelshandleFont(Label: WhatIsFAMEXTextLbl, Title: "La Feria Aeroespacial México (FAMEX), es un evento organizado por la Secretaria de la Defensa Nacional (SEDENA) a través de la Fuerza Aérea Mexicana que integra actividades del ámbito aeronáutico civil, comercial, militar y de defensa.", Font: .Futura(size: 20)!, JumpLine: true)
        
        labelshandleFont(Label: HistoryFAMEXTitleLbl, Title: "HISTORIA", Font: .Plateia(size: 30)!, JumpLine: false)
        labelshandleFont(Label: HistoryFAMEXTextLbl, Title: "La primera edición fue en el año 2015, con la finalidad de impulsar a México en el desarrollo económico del sector aeronáutico nacional, el responsable de la planeación, organización y materialización del evento fue el Comité Organizador.", Font: .Futura(size: 20)!, JumpLine: true)
        
        labelshandleFont(Label: ObjectivesFAMEXTitleLbl, Title: "OBJETIVOS", Font: .Plateia(size: 30)!, JumpLine: true)
        labelshandleFont(Label: ObjectivesFAMEXTextLbl, Title: "Reunir a los mejores lideres de la industria y servicio de la aviación para favorecer el intercambio comercial e impulsar el crecimiento de la industria aeroespacial en distintas regiones del país.", Font: .Futura(size: 20)!, JumpLine: true)
        
        labelshandleFont(Label: WhyMexicoTitleLbl, Title: "¿POR QUÉ MÉXICO?", Font: .Plateia(size: 30)!, JumpLine: false)
        labelshandleFont(Label: WhyMexicoTextLbl, Title: "EVOLUCIÓN DE LA FERIA AEROESPACIAL EN MÉXICO", Font: .Plateia(size: 20)!, JumpLine: true)
        
        labelshandleFont(Label: FirstYearLbl, Title: "2015", Font: .Plateia(size: 25)!, JumpLine: false)
        labelshandleFont(Label: SecondYearLbl, Title: "2019", Font: .Plateia(size: 25)!, JumpLine: false)
        labelshandleFont(Label: ThirdYearLbl, Title: "2023", Font: .Plateia(size: 25)!, JumpLine: false)
        
        labelshandleFont(Label: ExhibitorsFAMEXLbl, Title: "Expositores", Font: .Futura(size: 15)!, JumpLine: false)
        labelshandleFont(Label: FirstYearExhibitorsFAMEXLbl, Title: "240", Font: .Plateia(size: 20)!, JumpLine: false)
        labelshandleFont(Label: SecondYearExhibitorsFAMEXLbl, Title: "505", Font: .Plateia(size: 20)!, JumpLine: false)
        
        labelshandleFont(Label: AircraftFAMEXLbl, Title: "Aeronavez", Font: .Futura(size: 15)!, JumpLine: false)
        labelshandleFont(Label: FirstYearAircraftFAMEXLbl, Title: "32", Font: .Plateia(size: 20)!, JumpLine: false)
        labelshandleFont(Label: SecondYearAircraftFAMEXLbl, Title: "48", Font: .Plateia(size: 20)!, JumpLine: false)
        
        labelshandleFont(Label: B2BMeetingLbl, Title: "B2B Meetings", Font: .Futura(size: 15)!, JumpLine: false)
        labelshandleFont(Label: FirstYearB2BMeetingLbl, Title: "3500", Font: .Plateia(size: 20)!, JumpLine: false)
        labelshandleFont(Label: SecondYearB2BMeetingLbl, Title: "4500", Font: .Plateia(size: 20)!, JumpLine: false)
        
        labelshandleFont(Label: VisitorsFAMEXLbl, Title: "Visitantes", Font: .Futura(size: 15)!, JumpLine: false)
        labelshandleFont(Label: FirstYearVisitorsFAMEXLbl, Title: "32000", Font: .Plateia(size: 20)!, JumpLine: false)
        labelshandleFont(Label: SecondYearVisitorsFAMEXLbl, Title: "45000", Font: .Plateia(size: 20)!, JumpLine: false)
        
        labelshandleFont(Label: CountriesFAMEXLbl, Title: "Países", Font: .Futura(size: 15)!, JumpLine: false)
        labelshandleFont(Label: FirstYearCountriesFAMEXLbl, Title: "16", Font: .Plateia(size: 20)!, JumpLine: false)
        labelshandleFont(Label: SecondYearCountriesFAMEXLbl, Title: "35", Font: .Plateia(size: 20)!, JumpLine: false)
        
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
        PastEditionsFAMEX.titleLabel?.text = "  EDICIONES\n  PASADAS"
        PastEditionsFAMEX.titleLabel?.numberOfLines = 0
        PastEditionsFAMEX.titleLabel?.textColor = .white
        PastEditionsFAMEX.titleLabel?.font = .Plateia(size: 20)
        PastEditionsFAMEX.titleLabel?.adjustsFontSizeToFitWidth = true
        PastEditionsFAMEX.titleLabel?.minimumScaleFactor = 0.5
        
    }
    
    func labelshandleFont(Label: UILabel, Title: String, Font: UIFont, JumpLine: Bool) {
        if JumpLine == true {
            Label.text = Title
            Label.numberOfLines = 0
            Label.textColor = .white
            Label.font = Font
            Label.adjustsFontSizeToFitWidth = true
            Label.minimumScaleFactor = 0.5
            Label.textAlignment = .center
        } else {
            Label.text = Title
            Label.textColor = .white
            Label.font = Font
            Label.adjustsFontSizeToFitWidth = true
            Label.minimumScaleFactor = 0.5
            Label.textAlignment = .center
        }
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
