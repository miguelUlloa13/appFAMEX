//
//  DetailViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 06/02/23.
//

    

import UIKit

final class DetailsPopUpViewController: UIViewController {
    
    // MARK: - Notes -
        // Controlador de la Pantalla "Details PopUp"
    
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

    public var conferenceTitle: String?         // Titulo de la conferencia
    public var speakerName: String?             // Nombre del conferencista
    public var conferenceDate: String?          // Fecha de la conferencia
    public var conferenceTime: String?          // Hora de la conferencia
    public var conferenceLocation: String?      // Lugar de la conferencia
    public var conferenceDescription: String?   // Descripción de la conferencia
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

            // Asignar titulo a la "View Scene"
        self.title = "Detalles"
        
        print("Se despliega el Pop Up Details")
        
        setUpView()
        setUpLabels()
        setUpTextView()
        passingData()
        setUpNavigatonController()
        
    }
    
    // MARK: - Methods
    
        // Metodos para personalizar las views
    private func setUpView() {
        MainInfoView.layer.cornerRadius = 10        // Asignar 10 ptos de radio a las esquinas
        SubInfoView.layer.cornerRadius = 10
        DescriptionView.layer.cornerRadius = 10
    }

        // Metodos para personalizar los labels
    private func setUpLabels() {
            
        ConferenceTitleLbl.font = .Futura(size: 20) // Asignar tipo de fuente al label
        ConferenceTitleLbl.textAlignment = .center  // Asignar alineación
        ConferenceTitleLbl.numberOfLines = 0        // Salto de linea
        ConferenceTitleLbl.adjustsFontSizeToFitWidth = true // Autoajuste al tamaño de la fuente de acuerdo al contenedor
        ConferenceTitleLbl.minimumScaleFactor = 0.5 // Minima escala del tamańo de la fuente
        
        SpeakerNameLbl.text = "Conferencista:"      // Asignar texto al label
        
        ConferenceSpeakerNameLbl.textColor = .link  // Asignar color al label
        ConferenceSpeakerNameLbl.numberOfLines = 0
        ConferenceSpeakerNameLbl.adjustsFontSizeToFitWidth = true
        ConferenceSpeakerNameLbl.minimumScaleFactor = 0.5
        
        DateLbl.text = "Fecha:"
        
        ConferenceDateLbl.textColor = .link
        ConferenceDateLbl.numberOfLines = 0
        ConferenceDateLbl.adjustsFontSizeToFitWidth = true
        ConferenceDateLbl.minimumScaleFactor = 0.5
        
        TimeLbl.text = "Hora:"
        
        ConferenceTimeLbl.textColor = .link
        ConferenceTimeLbl.numberOfLines = 0
        ConferenceTimeLbl.adjustsFontSizeToFitWidth = true
        ConferenceTimeLbl.minimumScaleFactor = 0.5
        
        LocationLbl.text = "Lugar:"
        
        ConferenceLocationLbl.textColor = .link
        ConferenceLocationLbl.numberOfLines = 0
        ConferenceLocationLbl.adjustsFontSizeToFitWidth = true
        ConferenceLocationLbl.minimumScaleFactor = 0.5
        
        DescriptionLbl.text = "Descripción:"
    
    }
        
        // Metodos para personalizar los text views
    private func setUpTextView() {
        
        ConferenceDescriptionTxtView.isEditable = false // Quitar la edicion al text view
        
    }
    
        // Metodos para pasar los datos al Detail Pop Up
    public func passingData() {
        
        ConferenceTitleLbl.text = conferenceTitle
        ConferenceSpeakerNameLbl.text = speakerName
        ConferenceDateLbl.text = conferenceDate
        ConferenceTimeLbl.text = conferenceTime
        ConferenceLocationLbl.text = conferenceLocation
        ConferenceDescriptionTxtView.text = conferenceDescription
        
    }
    

        // Metodo para personalizar la barra de navegación
    private func setUpNavigatonController() {

        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.02154482529, green: 0.2313018143, blue: 0.3553035259, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Cerrar", style: .plain, target: self, action: #selector(btnClosePopUp))
        
    }
    
    // MARK: - Method Actions
    
        // Metodo para cerrar el pop up
    @objc func btnClosePopUp() {
        
        dismiss(animated: true, completion: nil)
        
    }

}
