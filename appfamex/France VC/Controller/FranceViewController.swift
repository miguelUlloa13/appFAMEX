//
//  FranceViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 08/01/23.
//

import UIKit

class FranceViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var FranceView: UIView!
    @IBOutlet weak var FranceBtnsView: UIView!
    @IBOutlet weak var FranceLblView: UIView!
    @IBOutlet weak var FranceConferencesExhibitionChaletsView: UIView!
    @IBOutlet weak var AboutFranceView: UIView!
    @IBOutlet weak var FranceEmbassyView: UIView!
    @IBOutlet weak var FranceConferencesView: UIView!
    @IBOutlet weak var FranceExhibitionView: UIView!
    @IBOutlet weak var FranceChaletsView: UIView!
    @IBOutlet weak var FranceJobView: UIView!
    @IBOutlet weak var FranceLeadersView: UIView!
    @IBOutlet weak var FranceIDView: UIView!
    @IBOutlet weak var FranceCommercialView: UIView!
    
    // Stack Viewa
    @IBOutlet weak var FranceSV: UIStackView!
    @IBOutlet weak var FranceBtnsSV: UIStackView!
    @IBOutlet weak var ConferencesExhibitionsChaletsSV: UIStackView!
    @IBOutlet weak var AboutFranceSV: UIStackView!
    // Images
    @IBOutlet weak var FranceBGImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var FranceConferencesBtn: UIButton!
    @IBOutlet weak var FranceExhibitionBtn: UIButton!
    @IBOutlet weak var FranceChaletsBtn: UIButton!
    @IBOutlet weak var FranceJobBtn: UIButton!
    @IBOutlet weak var FranceLeadersBtn: UIButton!
    @IBOutlet weak var FranceIDBtn: UIButton!
    @IBOutlet weak var FranceCommercialBtn: UIButton!
    @IBOutlet weak var FranceEmbassyBtn: UIButton!
    
        // Labels
    @IBOutlet weak var FranceLbl: UILabel!
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpButtons()
        setUpLabels()
        addChildMenuViewController()
        setUpMenu()

    }
    
    // MARK: - Methods
    func setUpButtons() {
        
            // Conferencias
        FranceConferencesBtn.setTitle("CONFERENCIAS", for: .normal)
        FranceConferencesBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        FranceConferencesBtn.setTitleColor(.white, for: .normal)
        FranceConferencesBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceConferencesBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Exposicion Estatica
        FranceExhibitionBtn.setTitle("EXPOSICIÓN\nESTÁTICA", for: .normal)
        FranceExhibitionBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        FranceExhibitionBtn.setTitleColor(.link, for: .normal)
        FranceExhibitionBtn.titleLabel?.numberOfLines = 0
        FranceExhibitionBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceExhibitionBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Chalets
        FranceChaletsBtn.setTitle("CHALETS", for: .normal)
        FranceChaletsBtn.titleLabel?.font = UIFont(name: "Plateia", size: 20)
        FranceChaletsBtn.setTitleColor(.white, for: .normal)
        FranceChaletsBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceChaletsBtn.titleLabel?.minimumScaleFactor = 0.5
        
            // Attributes to buttons
        let myAttributes: [NSAttributedString.Key: Any] = [
              .font: UIFont.systemFont(ofSize: 18),
              .foregroundColor: UIColor.white,
              .underlineStyle: NSUnderlineStyle.single.rawValue
          ]
        
        let attributeString1 = NSMutableAttributedString(
                string: "Puestos de trabajo \nnumerosos y muy cualificados",
                attributes: myAttributes
             )
        
        let attributeString2 = NSMutableAttributedString(
                string: "Muchos lideres \nmundiales en \nFrancia",
                attributes: myAttributes
             )
        
        let attributeString3 = NSMutableAttributedString(
                string: "Una I+D fuerte e \ninternacionalizada",
                attributes: myAttributes
             )

        let attributeString4 = NSMutableAttributedString(
                string: "Un éxito \ncomercial",
                attributes: myAttributes
             )
        
        FranceJobBtn.tag = 0
        FranceJobBtn.setAttributedTitle(attributeString1, for: .normal)
        FranceJobBtn.titleLabel?.numberOfLines = 0
        FranceJobBtn.titleLabel?.textAlignment = .center
        FranceJobBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceLeadersBtn.tag = 1
        FranceLeadersBtn.setAttributedTitle(attributeString2, for: .normal)
        FranceLeadersBtn.titleLabel?.numberOfLines = 0
        FranceLeadersBtn.titleLabel?.textAlignment = .center
        FranceLeadersBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceIDBtn.tag = 2
        FranceIDBtn.setAttributedTitle(attributeString3, for: .normal)
        FranceIDBtn.titleLabel?.numberOfLines = 0
        FranceIDBtn.titleLabel?.textAlignment = .center
        FranceIDBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceCommercialBtn.tag = 3
        FranceCommercialBtn.setAttributedTitle(attributeString4, for: .normal)
        FranceCommercialBtn.titleLabel?.numberOfLines = 0
        FranceCommercialBtn.titleLabel?.textAlignment = .center
        FranceCommercialBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
    }
    
    func setUpLabels() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = FranceLbl
        myTitle.Title = "F\nR\nA\nN\nC\nI\nA"
        myTitle.Size = 40
        myTitle.HandlingText()

    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "FRANCIA")
        myMenu.myView = FranceView
        myMenu.myBGImage = FranceBGImg
        myMenu.firstViewPosition = FranceView.transform
        
    }
    
    private func addChildMenuViewController() {
        
        let storyBoard = UIStoryboard(name: "Menu", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        self.addChild(menuVC)
        menuVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuVC.view)
        NSLayoutConstraint.activate([
            menuVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
            menuVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),   // Constraint derecho
            menuVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),          // Constraint superior
            menuVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)])    // Constraint inferior
        menuVC.didMove(toParent: self)
        self.view.sendSubviewToBack(menuVC.view)

    }
    
    // MARK: - Method Actions
    
    @IBAction func tappedFranceEmbassyBtn(_ sender: UIButton) {
        
        if let url = URL(string: "https://mx.ambafrance.org") {
              if #available(iOS 10, *){
                  UIApplication.shared.open(url)
              }else{
                  UIApplication.shared.openURL(url)
              }
        }
        
    }
    
    
    @IBAction func TappedAboutFranceBtns(_ sender: UIButton) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "FirstPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "FirstPopUpVC") as! FirstPopUpViewController
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: popUpVC)
        
        switch sender.tag {
        case 0:
            
            popUpVC.PopUpOneImage = UIImage(named: "avionsito1Img")
            popUpVC.PopUpOneTitle = "Hola"
            popUpVC.PopUpOneDescription = "Adios"
            
        case 1:
            
            popUpVC.PopUpOneImage = UIImage(named: "avionsito2Img")
            popUpVC.PopUpOneTitle = "Hola2"
            popUpVC.PopUpOneDescription = "Adios2"
            
        case 2:
            
            popUpVC.PopUpOneImage = UIImage(named: "avionsito3Img")
            popUpVC.PopUpOneTitle = "Hola3"
            popUpVC.PopUpOneDescription = "Adios3"
            
        case 3:
            
            popUpVC.PopUpOneImage = UIImage(named: "avionsito4Img")
            popUpVC.PopUpOneTitle = "Hola4"
            popUpVC.PopUpOneDescription = "Adios4"
            
        default:
            print("Opcion Invalida")
        }
        
        self.present(navBarOnModal, animated: true, completion: nil)
        
    }
    

}
