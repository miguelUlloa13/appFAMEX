//
//  FranceConferencesViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 25/01/23.
//

import UIKit

class FirstDayFranceConferenceViewController: UIViewController {
    
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
    private let myConferenceModel = ConferenceModel()
    private let pavilionLetters = ["A", "B", "C", "D", "E", "F"]
    

    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FirstDayTV.backgroundColor = .clear
        FirstDayTV.delegate = self
        FirstDayTV.dataSource = self
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
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "DetailsPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "DetailsPopUpVC") as! DetailsPopUpViewController
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: popUpVC)
    
        popUpVC.conferenceTitle = "Hola"
        popUpVC.speakerName = "Hola"
        popUpVC.conferenceDate = "Hola"
        popUpVC.conferenceTime = "Hola"
        popUpVC.conferenceLocation = "Hola"
        popUpVC.conferenceDescription = "Hola"
 
        
        self.present(navBarOnModal, animated: true, completion: nil)
        
    }
    
}
