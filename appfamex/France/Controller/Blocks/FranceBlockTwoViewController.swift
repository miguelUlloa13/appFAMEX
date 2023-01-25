//
//  FranceBlockTwoViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 25/01/23.
//

import UIKit

class FranceBlockTwoViewController: UIViewController {

    // MARK: - Outlets
        // Views
    @IBOutlet weak var FranceBlockTwoView: UIView!
    
        // Images
    @IBOutlet weak var FranceBlockTwoBGImg: UIImageView!
    
        // Labels
    @IBOutlet weak var FranceBlockTwoLbl: UILabel!
    
        // Collection View
    @IBOutlet weak var FranceBlockTwoCV: UICollectionView!
    
    // MARK: - Properties
    let Block1ArrayImgs = ["avionsito1Img", "avionsito2Img", "avionsito3Img", "avionsito4Img", "avionsito5Img"]
    let DescripcionAvion = "Air Force One es el indicativo que da el control del tráfico aéreo a cualquier avión de la Fuerza Aérea de los Estados Unidos que transporta al presidente de los Estados Unidos y solo cuando él esté a bordo puede adoptar ese indicativo, mientras tanto se considerará como una aeronave civil. Es un error común pensar que el Air Force One se refiere a un avión específico. Después del 11 de septiembre de 2001 el Air Force One es el centro de gobierno estadunidense mientras el presidente esté dentro de la aeronave en cualquier parte del mundo."
    let NombreAvion = ["Air Force One", "Pilatus PC-7", "Beechcraft T-6 Texan II", "Cessna 182 Skylane", "Eurocopter EC225 Super Puma"]
    
    private let cellSizeWitdh = UIScreen.main.bounds.width / 2
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        // Delegados del collection view
        FranceBlockTwoCV.delegate = self
        FranceBlockTwoCV.dataSource = self
        FranceBlockTwoCV.register(UINib(nibName: "StaticExhibitionCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "StaticExhibitionCell")
        
        setUpLabel()
        setUpCollectionView()
        
    }
    
    // MARK: - Methods
    
    func setUpLabel() {
        
        let myTitle = TitleTextFont()
        
        let gradient = UIImage.gradientImage(bounds: FranceBlockTwoLbl.bounds, colors: [.blue, .white, .red])
        
        myTitle.Label = FranceBlockTwoLbl
        myTitle.Title = "BLOQUE 2"
        myTitle.TextColor = UIColor(patternImage: gradient)
        myTitle.HandlingText()
        
        
    }
    
    func setUpCollectionView() {
        
        FranceBlockTwoCV.backgroundColor = .clear
        
    }
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
extension FranceBlockTwoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

        // Number of items Collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return Block1ArrayImgs.count
    
    }

        // Populate Collecttion view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StaticExhibitionCell", for: indexPath) as? StaticExhibitionCollectionViewCell
        
        cell?.StaticExhibitionCVCellImage.image = UIImage(named: Block1ArrayImgs[indexPath.row])
        cell?.StaticExhibitionCVCellTitleLbl.text =  NombreAvion[indexPath.row]
        cell?.StaticExhibitionCVCellDescriptionLbl.text =  DescripcionAvion
        
        let bgColorView = UIView()
        
        bgColorView.backgroundColor = UIColor.white.withAlphaComponent(0.2)
        cell?.selectedBackgroundView = bgColorView
        
        cell?.layer.cornerRadius = 20
        
        return cell!
        
    }

        // Action on Tap Collection view
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "FirstPopUp", bundle: nil)
        let popUpVC = storyBoard.instantiateViewController(withIdentifier: "FirstPopUpVC") as! FirstPopUpViewController
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: popUpVC)
        
        FranceBlockTwoCV.deselectItem(at: indexPath, animated: true)
        popUpVC.PopUpOneTitle = NombreAvion[indexPath.row]
        popUpVC.PopUpOneDescription = DescripcionAvion
        popUpVC.PopUpOneImage = UIImage(named: Block1ArrayImgs[indexPath.row])
        
        self.present(navBarOnModal, animated: true, completion: nil)
        

    }

    // Size items Collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: cellSizeWitdh, height: 400)
        
    }


}
