//
//  FranceChaletsViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 25/01/23.
//

import UIKit

class FranceChaletsViewController: UIViewController {
    
    // MARK: - Outlets
    
        // View
    @IBOutlet weak var FranceChaletsView: UIView!
    @IBOutlet weak var FranceChaletsTitleView: UIView!
    
        // Images
    @IBOutlet weak var FranceChaletsBGImg: UIImageView!
    @IBOutlet weak var FranceChaletsTitleBGImg: UIImageView!
    @IBOutlet weak var FranceChaletsIconImg: UIImageView!
    
        // Labels
    @IBOutlet weak var FranceChaletsLbl: UILabel!
    
        // Segmented Control
    @IBOutlet weak var FranceChaletsSegmControl: UISegmentedControl!
    
        // Table view
    @IBOutlet weak var FranceChaletsTV: UITableView!
    
    // MARK: - Properties
    lazy var rowsToDisplay = ChaletOne  // Indicador del pabellon a desplegar
    
    let BlocksName = ["Bloque 1", "Bloque 2", "Bloque 3"]
    let CompanyImages = ["SampleChaletOneImg", "SampleChaletTwoImg", "SampleChaletThreeImg"]
    
    let ChaletOne = ["Empresa 1 Chalet 1", "Empresa 2 Chalet 1", "Empresa 3 Chalet 1"]
    
    let ChaletTwo = ["Empresa 1 Chalet 2", "Empresa 2 Chalet 2", "Empresa 3 Chalet 2"]
    
    let ChaletThree = ["Empresa 1 Chalet 3", "Empresa 2 Chalet 3", "Empresa 3 Chalet 3"]
    

    // MARK: - View Life Cycle Method
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FranceChaletsTV.backgroundColor = .clear
        FranceChaletsTV.delegate = self
        FranceChaletsTV.dataSource = self
        FranceChaletsTV.register(UINib(nibName: "ChaletTableViewCell", bundle: nil), forCellReuseIdentifier: "ChaletCell")
        
        setUpLabel()
        setUpSegmentedControl()
      
    }
    
    // MARK: - Methods
    
    func setUpLabel() {
        
        let myTitle = TitleTextFont()
        
        myTitle.Label = FranceChaletsLbl
        myTitle.Title = "CHALETS"
        myTitle.Size = 20
        myTitle.HandlingText()
        
    }
    
    func setUpSegmentedControl() {
        
        FranceChaletsSegmControl.removeAllSegments()
        
        for (index, value) in BlocksName.enumerated() {
            
            FranceChaletsSegmControl.insertSegment(withTitle: value, at: index, animated: true)
            
        }
    }
    
    // MARK: - Method Actions
    @IBAction func TappedFranceChaletSegmControl(_ sender: UISegmentedControl) {
        
        print(FranceChaletsSegmControl.selectedSegmentIndex)
        
        switch FranceChaletsSegmControl.selectedSegmentIndex {
        case 0:
            rowsToDisplay = ChaletOne
        case 1:
            rowsToDisplay = ChaletTwo
        default:
            rowsToDisplay = ChaletThree
        }
        
        FranceChaletsTV.reloadData()
        
    }
    
}

    // MARK: - UITableViewDelegate, UITableViewDataSource
extension FranceChaletsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return rowsToDisplay.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChaletCell", for: indexPath) as! ChaletTableViewCell
        
        cell.ChaletCompanyNameLbl.text = rowsToDisplay[indexPath.row]
        cell.ChaletCompanyImg.image = UIImage(named: CompanyImages[indexPath.row])   // Colocar la imagen a cada celda
        cell.ChaletCompanyDescriptionLbl.text = "Descripcion"
        
        cell.backgroundColor = .clear
        
        return cell
        
    }
    
}
