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
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpButtons()
        setUpLabels()

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
        FranceExhibitionBtn.setTitleColor(.blue, for: .normal)
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
        
        FranceJobBtn.setAttributedTitle(attributeString1, for: .normal)
        FranceJobBtn.titleLabel?.numberOfLines = 0
        FranceJobBtn.titleLabel?.textAlignment = .center
        FranceJobBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceLeadersBtn.setAttributedTitle(attributeString2, for: .normal)
        FranceLeadersBtn.titleLabel?.numberOfLines = 0
        FranceLeadersBtn.titleLabel?.textAlignment = .center
        FranceLeadersBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceIDBtn.setAttributedTitle(attributeString3, for: .normal)
        FranceIDBtn.titleLabel?.numberOfLines = 0
        FranceIDBtn.titleLabel?.textAlignment = .center
        FranceIDBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
        FranceCommercialBtn.setAttributedTitle(attributeString4, for: .normal)
        FranceCommercialBtn.titleLabel?.numberOfLines = 0
        FranceCommercialBtn.titleLabel?.textAlignment = .center
        FranceCommercialBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        FranceJobBtn.titleLabel?.minimumScaleFactor = 0.5
        
    }
    
    func setUpLabels() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = FranceLbl
        myTitle.Title = "E\nV\nE\nN\nT\nO\nS"
        myTitle.Size = 40
        myTitle.HandlingText()

    }
    
    // MARK: - Method Actions
    
    @IBAction func tappedFranceEmbassyBtn(_ sender: Any) {
        
        if let url = URL(string: "https://mx.ambafrance.org") {
              if #available(iOS 10, *){
                  UIApplication.shared.open(url)
              }else{
                  UIApplication.shared.openURL(url)
              }
        }
        
    }
    

}
