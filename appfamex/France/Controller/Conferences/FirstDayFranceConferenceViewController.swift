//
//  FranceConferencesViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 25/01/23.
//

import UIKit

class FirstDayFranceConferenceViewController: UIViewController {
    
    // MARK: - Notes -
        // Controlador de la Pantalla "Item 1"
    
    // MARK: - Outlets
    
        // View
    @IBOutlet weak var FirstDayFranceConfView: UIView!
    @IBOutlet weak var FirstDayFranceConfTitleView: UIView!
    @IBOutlet weak var FirstDayFranceConfLineRefView: UIView!
    @IBOutlet weak var FirstDayFranceConfSelectAuditoryView: UIView!
    @IBOutlet weak var FirstDayFranceConfTVView: UIView!
    
        // Images
    @IBOutlet weak var FirstDayFranceConfBGImg: UIImageView!
    @IBOutlet weak var FirstDayFranceConfTitleBGImg: UIImageView!
    @IBOutlet weak var FirstDayFranceConfIconImg: UIImageView!
    
        // Stack View
    @IBOutlet weak var FirstDayFranceConfSV: UIStackView!
    
        // Labels
    @IBOutlet weak var FirstDayAuditoryNameLbl: UILabel!
    @IBOutlet weak var FirstDayPavilionNameLbl: UILabel!
    
        // Button
    @IBOutlet weak var LeftBtn: UIButton!
    @IBOutlet weak var RightBtn: UIButton!
    
        // Segmented Control
    @IBOutlet weak var FirstDaySegmControl: UISegmentedControl!
        
        // Table view
    @IBOutlet weak var FirstDayTV: UITableView!
    
    // MARK: - Properties
    private let myConferenceModel = ConferenceModel()   // Instancia de la clase "ConferenceModel" (Objeto)
    private let pavilionLetters = ["A", "B", "C", "D", "E", "F"]    // Valores para el segmented control
    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FirstDayTV.backgroundColor = .clear     // Color de fondo del Table view
        FirstDayTV.delegate = self              //
        FirstDayTV.dataSource = self            //
        FirstDayTV.register(UINib(nibName: "ConferencesTableViewCell", bundle: nil), forCellReuseIdentifier: "ConferenceCell")
        
        setUpLabel()
        setUpButtons()
        setUpSegmentedControl()
        
    }
    
    // MARK: - Methods
    
    private func setUpLabel() {
        
            // Labels
        let myTitleText = TitleTextFont()
        let myBodytext = BodyTextFont()
        
        myTitleText.Label = FirstDayAuditoryNameLbl
        myTitleText.Title = "Auditorio: Alfa"
        myTitleText.Size = 16
        myTitleText.TextAlignment = .left
        myTitleText.HandlingText()
        
        myBodytext.Label = FirstDayPavilionNameLbl
        myBodytext.Title = "Pabellon A"
        myBodytext.Size = 14
        myBodytext.HandlingText()
        
    }
    
    private func setUpButtons() {
        
            // Buttons
        RightBtn.tag = 0        // Identificador o tag del boton Derecho
        LeftBtn.round()
        
        LeftBtn.tag = 1         // Identificador o tag del boton Izquierdo
        LeftBtn.round()
        
    }
    
    private func setUpSegmentedControl() {
        
        FirstDaySegmControl.removeAllSegments()
        
        for (index, value) in pavilionLetters.enumerated() {
            
            FirstDaySegmControl.insertSegment(withTitle: value, at: index, animated: true)
            
        }
        
        FirstDaySegmControl.selectedSegmentIndex = 0
        
    }
    
    // MARK: - Method Actions
    
    @IBAction func TappedSegmentedControl(_ sender: UISegmentedControl) {
        
        myConferenceModel.DisplayingConference(indexSegmControl: FirstDaySegmControl.selectedSegmentIndex, myAuditoryLbl: FirstDayAuditoryNameLbl, myPavilionLbl: FirstDayPavilionNameLbl)
        
        FirstDayTV.reloadData()
        
    }
    
    @IBAction func TappedLeftOrRightBtns(_ sender: UIButton) {
        
        if sender.tag == 0 {
            myConferenceModel.movingToRigth(myRightButton: RightBtn, mySegmentedContol: FirstDaySegmControl)
            TappedSegmentedControl(FirstDaySegmControl)
            
        } else {
            myConferenceModel.movingToLeft(myLeftButton: LeftBtn, mySegmentedContol: FirstDaySegmControl)
            TappedSegmentedControl(FirstDaySegmControl)
            
        }
        
    }

}

    // MARK: - UITableViewDelegate, UITableViewDataSource
extension FirstDayFranceConferenceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myConferenceModel.rowsToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConferenceCell", for: indexPath) as! ConferencesTableViewCell
        
        cell.ConferenceTitle.text = myConferenceModel.rowsToDisplay[indexPath.row]
        cell.ConferenceTime.text = "6:00"
        
        cell.backgroundColor = .clear
        cell.selectionStyle = .none
        
        cell.SaveBtn.tag = indexPath.row
        cell.infoBtn.tag = indexPath.row
        
        cell.SaveBtn.addTarget(self, action: #selector(TappedSaveBtn), for: .touchUpInside)
        cell.infoBtn.addTarget(self, action: #selector(TappedInfoBtn), for: .touchUpInside)
        
        return cell
        
    }
    
    @objc func TappedInfoBtn (sender: UIButton) {
        
        let indexPathAux = IndexPath(row: sender.tag, section: 0)
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "DetailsPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "DetailsPopUpVC") as! DetailsPopUpViewController
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: popUpVC)
        
        print("Se presiono el boton info: fila \(indexPathAux.row) -- sección \(indexPathAux.section)")
        
        switch FirstDaySegmControl.selectedSegmentIndex {
            
        case 0:
            popUpVC.conferenceTitle = "Hola 0"
            popUpVC.speakerName = "Hola 0"
            popUpVC.conferenceDate = "Hola 0"
            popUpVC.conferenceTime = "Hola 0"
            popUpVC.conferenceLocation = "Hola 0"
            popUpVC.conferenceDescription = "Hola 0"
        case 1:
            popUpVC.conferenceTitle = "Hola 1"
            popUpVC.speakerName = "Hola 1"
            popUpVC.conferenceDate = "Hola 1"
            popUpVC.conferenceTime = "Hola 1"
            popUpVC.conferenceLocation = "Hola 1"
            popUpVC.conferenceDescription = "Hola 1"
        case 2:
            popUpVC.conferenceTitle = "Hola 2"
            popUpVC.speakerName = "Hola 2"
            popUpVC.conferenceDate = "Hola 2"
            popUpVC.conferenceTime = "Hola 2"
            popUpVC.conferenceLocation = "Hola 2"
            popUpVC.conferenceDescription = "Hola 2"
        case 3:
            popUpVC.conferenceTitle = "Hola 3"
            popUpVC.speakerName = "Hola 3"
            popUpVC.conferenceDate = "Hola 3"
            popUpVC.conferenceTime = "Hola 3"
            popUpVC.conferenceLocation = "Hola 3"
            popUpVC.conferenceDescription = "Hola 3"
        case 4:
            popUpVC.conferenceTitle = "Hola 4"
            popUpVC.speakerName = "Hola 4"
            popUpVC.conferenceDate = "Hola 4"
            popUpVC.conferenceTime = "Hola 4"
            popUpVC.conferenceLocation = "Hola 4"
            popUpVC.conferenceDescription = "Hola 4"
        default:
            popUpVC.conferenceTitle = "Hola 5"
            popUpVC.speakerName = "Hola 5"
            popUpVC.conferenceDate = "Hola 5"
            popUpVC.conferenceTime = "Hola 5"
            popUpVC.conferenceLocation = "Hola 5"
            popUpVC.conferenceDescription = "Hola 5"
        }
        
        self.present(navBarOnModal, animated: true, completion: nil)
        
    }
    
    @objc func TappedSaveBtn (sender: UIButton) {
        
        showPopUpAddMiItinerario().fadeInAndOut()
        
    }
    
    private func showPopUpAddMiItinerario () -> UIView {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "ConferenceSavedPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "ConferenceSavedPopUpVC") as! ConferenceSavedPopUpViewController

        self.addChild(popUpVC)
        
        
        popUpVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(popUpVC.view)
        popUpVC.view.anchor(top: .none, paddingTop: .zero , bottom: view.safeAreaLayoutGuide.bottomAnchor, paddingBottom: 5, left: view.leftAnchor, paddingLeft: 70, right: view.rightAnchor, paddingRight: 75, width: 0, height: 55)
        popUpVC.view.layer.cornerRadius = 23
        popUpVC.view.clipsToBounds = true
        popUpVC.didMove(toParent: self)
        self.view.bringSubviewToFront(popUpVC.view)
        
        return popUpVC.view
        
    }
    
}
