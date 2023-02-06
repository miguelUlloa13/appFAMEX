//
//  DetailViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 06/02/23.
//

import UIKit

class DetailsPopUpViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var DetailsConferenceView: UIView!
    @IBOutlet weak var MainInfoView: UIView!
    @IBOutlet weak var SubInfoView: UIView!
    @IBOutlet weak var DateView: UIView!
    @IBOutlet weak var TimeView: UIView!
    @IBOutlet weak var LocationView: UIView!
    @IBOutlet weak var DescriptionView: UIView!
    
    @IBOutlet weak var ConferenceSV: UIStackView!
    @IBOutlet weak var SubInfoSV: UIStackView!
    
    
    @IBOutlet weak var ConferenceTitleLbl: UILabel!
    @IBOutlet weak var SpeakerNameLbl: UILabel!
    @IBOutlet weak var ConferenceSpeakerNameLbl: UILabel!
    @IBOutlet weak var DateLbl: UILabel!
    @IBOutlet weak var ConferenceDateLbl: UILabel!
    @IBOutlet weak var TimeLbl: UILabel!
    @IBOutlet weak var ConferenceTimeLbl: UILabel!
    @IBOutlet weak var LocationLbl: UILabel!
    @IBOutlet weak var ConferenceLocationLbl: UILabel!
    @IBOutlet weak var DescriptionLbl: UILabel!
    
    @IBOutlet weak var ConferenceDescriptionTxtView: UITextView!
    
    @IBOutlet weak var DetailsBGImg: UIImageView!
    @IBOutlet weak var CalendarIconImg: UIImageView!
    @IBOutlet weak var ClockIconImg: UIImageView!
    @IBOutlet weak var LocationIconImg: UIImageView!
  
    // MARK: - Properties
    
    var conferenceTitle: String?
    var speakerName: String?
    var conferenceDate: String?
    var conferenceTime: String?
    var conferenceLocation: String?
    var conferenceDescription: String?
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
        setUpLabels()
        setUpTextView()
        passingData()
        setUpNavigatonController()
        
    }
    
    // MARK: - Methods
    
    func setUpView() {
        MainInfoView.layer.cornerRadius = 10
        SubInfoView.layer.cornerRadius = 10
        DescriptionView.layer.cornerRadius = 10
    }

    func setUpLabels() {
        
        SpeakerNameLbl.text = "Conferencista:"
        DateLbl.text = "Fecha:"
        TimeLbl.text = "Hora:"
        LocationLbl.text = "Lugar:"
        DescriptionLbl.text = "Descripción:"
        
    }
    
    func setUpTextView() {
        
        ConferenceDescriptionTxtView.isEditable = false
        
    }
    
    func passingData() {
        
        ConferenceTitleLbl.text = conferenceTitle
        ConferenceSpeakerNameLbl.text = speakerName
        ConferenceDateLbl.text = conferenceDate
        ConferenceTimeLbl.text = conferenceTime
        ConferenceLocationLbl.text = conferenceLocation
        ConferenceDescriptionTxtView.text = conferenceDescription
        
    }
    

    
    func setUpNavigatonController() {

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.02154482529, green: 0.2313018143, blue: 0.3553035259, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cerrar", style: .plain, target: self, action: #selector(btnClosePopUp))
        
    }
    
    // MARK: - Method Actions
    
    @objc func btnClosePopUp() {
        
        dismiss(animated: true, completion: nil)
        
    }

}
