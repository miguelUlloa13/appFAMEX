//
//  ConferenceModel.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 04/02/23.
//

import Foundation
import UIKit

class ConferenceModel {
    
    // MARK: - Properties
    
        // Tupla de pabellones
    typealias ConferencePropertiesTuple = (pavilionName: String, auditoryName: String)
        // Arreglo de pabellones
    var auditoryAndPavilionsValues: [ConferencePropertiesTuple] = [
        ("Pabellón A", "Auditorio: Alfa"),
        ("Pabellón B", "Auditorio: Bravo"),
        ("Pabellón C", "Auditorio: Charlie"),
        ("Pabellón D", "Auditorio: Delta"),
        ("Pabellón E", "Auditorio: Eco"),
        ("Pabellón F", "Auditorio: Foxtrot")
    ]
    
    let pabellonA = [" Conferencia Francia A1", " Conferencia Francia A2", " Conferencia Francia A3", " Conferencia Francia A4", " Conferencia Francia A5"]

    let pabellonB = [" Conferencia Francia B1", " Conferencia Francia B2", " Conferencia Francia B3", " Conferencia Francia B4", " Conferencia Francia B5"]

    let pabellonC = [" Conferencia Francia C1", " Conferencia Francia C2", " Conferencia Francia C3", " Conferencia Francia C4", " Conferencia Francia C5"]

    let pabellonD = [" Conferencia Francia D1", " Conferencia Francia D2", " Conferencia Francia D3", " Conferencia Francia D4", " Conferencia Francia D5"]

    let pabellonE = [" Conferencia Francia E1", " Conferencia Francia E2", " Conferencia Francia E3", " Conferencia Francia E4", " Conferencia Francia E5"]

    let pabellonF = [" Conferencia Francia F1", " Conferencia Francia F2", " Conferencia Francia F3", " Conferencia Francia F4", " Conferencia Francia F5"]

    lazy var rowsToDisplay = pabellonA  // Indicador del pabellon a desplegar
    
    // MARK: - Methods
    
    func DisplayingConference (indexSegmControl:Int, myAuditoryLbl: UILabel, myPavilionLbl: UILabel) {
        
        print(indexSegmControl)
        
        switch indexSegmControl {
            
        case 0:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonA
            
        case 1:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonB
            
        case 2:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonC
            
        case 3:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonD
            
        case 4:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonE
            
        default:
            myAuditoryLbl.text = auditoryAndPavilionsValues[indexSegmControl].auditoryName
            myPavilionLbl.text = auditoryAndPavilionsValues[indexSegmControl].pavilionName
            rowsToDisplay = pabellonF
        }
        
    }
    
    
    func movingToRigth(myRightButton: UIButton, mySegmentedContol: UISegmentedControl) {
        myRightButton.bounce()
        mySegmentedContol.selectedSegmentIndex += 1
    }
    
    func movingToLeft(myLeftButton: UIButton, mySegmentedContol: UISegmentedControl) {
        myLeftButton.bounce()
        mySegmentedContol.selectedSegmentIndex -= 1
        
        if mySegmentedContol.selectedSegmentIndex == -1 {
            mySegmentedContol.selectedSegmentIndex = 0
        }
    }
    
}
