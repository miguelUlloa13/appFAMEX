//
//  ContactViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 23/01/23.
//

import UIKit

class ContactViewController: UIViewController {
    
        // Views
    @IBOutlet weak var ContactView: UIView!
    @IBOutlet weak var ContainerView: UIView!
    @IBOutlet weak var ContactTitleView: UIView!
    @IBOutlet weak var ArmyGeneralSandovalView: UIView!
    @IBOutlet weak var ArmyGeneralGarciaView: UIView!
    @IBOutlet weak var CommercialView: UIView!
    @IBOutlet weak var PublicRelationView: UIView!
    @IBOutlet weak var LogisticView: UIView!
    @IBOutlet weak var OperationsView: UIView!
    @IBOutlet weak var AdvertisingView: UIView!
    @IBOutlet weak var SocialNetworksView: UIView!
    
        // Images
    @IBOutlet weak var ContactBGImg: UIImageView!
    
        // ScroLl View
    @IBOutlet weak var ContactScrollView: UIScrollView!
    
        // Stack view
    @IBOutlet weak var ContactSV: UIStackView!
    @IBOutlet weak var SocialNetworkBtnsSV: UIStackView!
    
        // Labels
    @IBOutlet weak var ContactTitleLbl: UILabel!
    @IBOutlet weak var ArmyGeneralSandovalLbl: UILabel!
    @IBOutlet weak var ArmyGeneralSandovalEmailLbl: UILabel!
    @IBOutlet weak var ArmyGeneralGarciaLbl: UILabel!
    @IBOutlet weak var ArmyGeneralGarciaNumPhoneLbl: UILabel!
    @IBOutlet weak var ArmyGeneralGarciaEmailLbl: UILabel!
    @IBOutlet weak var CommercialLbl: UILabel!
    @IBOutlet weak var CommercialNumPhoneLbl: UILabel!
    @IBOutlet weak var CommercialEmailLbl: UILabel!
    @IBOutlet weak var PublicRelationLbl: UILabel!
    @IBOutlet weak var PublicRelationNumPhoneLbl: UILabel!
    @IBOutlet weak var PublicRelationEmailLbl: UILabel!
    @IBOutlet weak var LogisticLbl: UILabel!
    @IBOutlet weak var LogisticNumPhoneLbl: UILabel!
    @IBOutlet weak var LogisticEmailLbl: UILabel!
    @IBOutlet weak var OperationsLbl: UILabel!
    @IBOutlet weak var OperationsNumPhoneOneLbl: UILabel!
    @IBOutlet weak var OperationsNumPhoneTwoLbl: UILabel!
    @IBOutlet weak var OperationsEmailLbl: UILabel!
    @IBOutlet weak var AdvertisingLbl: UILabel!
    @IBOutlet weak var AdvertisingNumPhoneLbl: UILabel!
    @IBOutlet weak var AdvertisingEmailOneLbl: UILabel!
    @IBOutlet weak var AdvertisingEmailTwoLbl: UILabel!
    @IBOutlet weak var SocialNetworkingLbl: UILabel!
    
        // Buttons
    @IBOutlet weak var FacebookBtn: UIButton!
    @IBOutlet weak var InstagramBtn: UIButton!
    @IBOutlet weak var WebPageBtn: UIButton!
    @IBOutlet weak var YoutubeBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpLabels()
        setUpButtons()
    }

    func setUpLabels() {
       
        let myTitleText = TitleTextFont()
        let myBodytext = BodyTextFont()
        
        myTitleText.Label = ContactTitleLbl
        myTitleText.Title = "CONTACTO"
        myTitleText.HandlingText()
        
            // General Sandoval
        myBodytext.Label = ArmyGeneralSandovalLbl
        myBodytext.Title = "GENERAL DE BRIGADA JAVIER SANDOVAL DUEÑA\nPRESIDENTE DE COMITE"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = ArmyGeneralSandovalEmailLbl
        myBodytext.Title = "presidente@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // General Garcial
        myBodytext.Label = ArmyGeneralGarciaLbl
        myBodytext.Title = "GENERAL DE BRIGADA GABRIEL GARCIA JIMENEZ\nDIRECTOR EJECUTIVO"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = ArmyGeneralGarciaNumPhoneLbl
        myBodytext.Title = "Tel. +52 (55) 71 60 31 63"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = ArmyGeneralGarciaEmailLbl
        myBodytext.Title = "dir.ejecutivo@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // Comercial
        myBodytext.Label = CommercialLbl
        myBodytext.Title = "COMERCIAL"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = CommercialNumPhoneLbl
        myBodytext.Title = "Tel. +52 (55) 70 98 52 99"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = CommercialEmailLbl
        myBodytext.Title = "comercial@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // Relaciones publicas
        myBodytext.Label = PublicRelationLbl
        myBodytext.Title = "RELACIONES PUBLICAS"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = PublicRelationNumPhoneLbl
        myBodytext.Title = "Tel. +52 (55) 70 98 43 23"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = PublicRelationEmailLbl
        myBodytext.Title = "rels.publicas@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // Logistica
        myBodytext.Label = LogisticLbl
        myBodytext.Title = "LOGISTICA"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = LogisticNumPhoneLbl
        myBodytext.Title = "Tel. +52 (55) 31 81 03 32"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = LogisticEmailLbl
        myBodytext.Title = "@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // Operaciones
        myBodytext.Label = OperationsLbl
        myBodytext.Title = "OPERACIONES"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = OperationsNumPhoneOneLbl
        myBodytext.Title = "Tel. +52 (55) 71 60 31 63"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = OperationsNumPhoneTwoLbl
        myBodytext.Title = "Tel. +52 (55) 71 60 31 63"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = OperationsEmailLbl
        myBodytext.Title = "operaciones@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
            // Publicidad
        myBodytext.Label = AdvertisingLbl
        myBodytext.Title = "PUBLICIDAD"
        myBodytext.TextAlignment = .center
        myBodytext.HandlingText()
        
        myBodytext.Label = AdvertisingNumPhoneLbl
        myBodytext.Title = "Tel. +52 (55) 70 98 11 39"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = AdvertisingEmailOneLbl
        myBodytext.Title = "publicidad@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myBodytext.Label = AdvertisingEmailTwoLbl
        myBodytext.Title = "prensa@f-airmexico.com.mx"
        myBodytext.TextAlignment = .left
        myBodytext.HandlingText()
        
        myTitleText.Label = SocialNetworkingLbl
        myTitleText.Title = "SIGUENOS"
        myBodytext.TextAlignment = .center
        myTitleText.HandlingText()
        
    }
    
    func setUpButtons() {
        FacebookBtn.tag = 0
        InstagramBtn.tag = 1
        WebPageBtn.tag = 2
        YoutubeBtn.tag = 3
    }
    
    @IBAction func TappedSocialNetworkingBtns(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            
            if let url = URL(string: "https://www.facebook.com/feriaaeroespacialmexico/") {
                  if #available(iOS 10, *){
                      UIApplication.shared.open(url)
                  }else{
                      UIApplication.shared.openURL(url)
                  }
            }
            
        case 1:
            
            if let url = URL(string: "https://instagram.com/famex_oficial?igshid=YmMyMTA2M2Y=") {
                  if #available(iOS 10, *){
                      UIApplication.shared.open(url)
                  }else{
                      UIApplication.shared.openURL(url)
                  }
            }
            
        case 2:
            
            if let url = URL(string: "https://www.f-airmexico.com.mx") {
                  if #available(iOS 10, *){
                      UIApplication.shared.open(url)
                  }else{
                      UIApplication.shared.openURL(url)
                  }
            }
            
        case 3:
            
            if let url = URL(string: "https://www.youtube.com/@FairmexicoMxGPlus") {
                  if #available(iOS 10, *){
                      UIApplication.shared.open(url)
                  }else{
                      UIApplication.shared.openURL(url)
                  }
            }
    
            
        default:
            print("Opcion Invalida")
        }

        
    }
    
}
