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
    @IBOutlet weak var FirstDayFranceAuditoryNameLbl: UILabel!
    @IBOutlet weak var FirstDayFranceConfPavilionNameLbl: UILabel!
    
        // Button
    @IBOutlet weak var LeftBtn: UIButton!
    @IBOutlet weak var RightBtn: UIButton!
    
        // Segmented Control
    @IBOutlet weak var FirstDayFranceConfSegmControl: UISegmentedControl!
        
        // Table view
    @IBOutlet weak var FirstDayFranceConfTV: UITableView!
    
    // MARK: - Properties
        // Tupla de pabellones
    typealias tuplePabelllones = (pabellonName: String, auditorioName: String)
        // Arreglo de pabellones
    var arrayPabellones: [tuplePabelllones] = [
        ("Pabellon A", "Auditrio Alfa"),
        ("Pabellon B", "Auditrio Bravo"),
        ("Pabellon C", "Auditrio Charlie"),
        ("Pabellon D", "Auditrio Delta"),
        ("Pabellon E", "Auditrio Eco"),
        ("Pabellon F", "Auditrio Foxtrot")
    ]
    
    let PavilionsName = ["A", "B", "C", "D", "E", "F"]

    let pabellonA = [" Conferencia Francia A1", " Conferencia Francia A2", " Conferencia Francia A3", " Conferencia Francia A4", " Conferencia Francia A5"]

    let pabellonB = [" Conferencia Francia B1", " Conferencia Francia B2", " Conferencia Francia B3", " Conferencia Francia B4", " Conferencia Francia B5"]

    let pabellonC = [" Conferencia Francia C1", " Conferencia Francia C2", " Conferencia Francia C3", " Conferencia Francia C4", " Conferencia Francia C5"]

    let pabellonD = [" Conferencia Francia D1", " Conferencia Francia D2", " Conferencia Francia D3", " Conferencia Francia D4", " Conferencia Francia D5"]

    let pabellonE = [" Conferencia Francia E1", " Conferencia Francia E2", " Conferencia Francia E3", " Conferencia Francia E4", " Conferencia Francia E5"]

    let pabellonF = [" Conferencia Francia F1", " Conferencia Francia F2", " Conferencia Francia F3", " Conferencia Francia F4", " Conferencia Francia F5"]

    lazy var rowsToDisplay = pabellonA  // Indicador del pabellon a desplegar

    
    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FirstDayFranceConfTV.backgroundColor = .clear
        FirstDayFranceConfTV.delegate = self
        FirstDayFranceConfTV.dataSource = self
        FirstDayFranceConfTV.register(UINib(nibName: "ConferencesTableViewCell", bundle: nil), forCellReuseIdentifier: "ConferenceCell")
        
        setUpLabel()
        setUpButtons()
        setUpSegmentedControl()
        
    }
    
    // MARK: - Methods
    
    func setUpLabel() {
        
            // Labels
        FirstDayFranceAuditoryNameLbl.text = "Auditorio Alfa"
        FirstDayFranceAuditoryNameLbl.textAlignment = .center
        
        FirstDayFranceConfPavilionNameLbl.text = "Pabellon A"
        FirstDayFranceConfPavilionNameLbl.textAlignment = .center
        
    }
    
    func setUpButtons() {
        
            // Buttons
        LeftBtn.tag = 0        // Identificador o tag del boton Derecho
        LeftBtn.round()
        
        LeftBtn.tag = 1         // Identificador o tag del boton Izquierdo
        LeftBtn.round()
        
    }
    
    func setUpSegmentedControl() {
        
        FirstDayFranceConfSegmControl.removeAllSegments()
        
        for (index, value) in PavilionsName.enumerated() {
            
            FirstDayFranceConfSegmControl.insertSegment(withTitle: value, at: index, animated: true)
            
        }
    }
    
    // MARK: - Method Actions
    
    @IBAction func TappedFranceConfSegmControl(_ sender: UISegmentedControl) {
        
        print(FirstDayFranceConfSegmControl.selectedSegmentIndex)
        
        switch FirstDayFranceConfSegmControl.selectedSegmentIndex {
            
        case 0:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonA
            
        case 1:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonB
            
        case 2:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonC
            
        case 3:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonD
            
        case 4:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonE
            
        default:
            FirstDayFranceAuditoryNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].auditorioName
            FirstDayFranceConfPavilionNameLbl.text = arrayPabellones[FirstDayFranceConfSegmControl.selectedSegmentIndex].pabellonName
            rowsToDisplay = pabellonF
        }
        
        FirstDayFranceConfTV.reloadData()
        
    }
    
    @IBAction func TappedLeftOrRightBtns(_ sender: UIButton) {
        
        if sender.tag == 0 {
            RightBtn.bounce()
            FirstDayFranceConfSegmControl.selectedSegmentIndex += 1
            
            print(FirstDayFranceConfSegmControl.selectedSegmentIndex)
            TappedFranceConfSegmControl(FirstDayFranceConfSegmControl)
            
        } else {
            LeftBtn.bounce()
            FirstDayFranceConfSegmControl.selectedSegmentIndex -= 1
            
            if FirstDayFranceConfSegmControl.selectedSegmentIndex == -1 {
                FirstDayFranceConfSegmControl.selectedSegmentIndex = 0
                TappedFranceConfSegmControl(FirstDayFranceConfSegmControl)
            }
        
            TappedFranceConfSegmControl(FirstDayFranceConfSegmControl)
            
        }
        
    }
    
    

}

    // MARK: - UITableViewDelegate, UITableViewDataSource
extension FirstDayFranceConferenceViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsToDisplay.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConferenceCell", for: indexPath) as! ConferencesTableViewCell
        
        cell.ConferenceTitle.text = rowsToDisplay[indexPath.row]
        cell.ConferenceTime.text = "6:00"
        
        cell.backgroundColor = .clear
        
        return cell
        
    }
    
}
