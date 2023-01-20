//
//  HotelsViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 19/01/23.
//

import UIKit

class HotelsViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var HotelsView: UIView!
    @IBOutlet weak var HotelsTitleView: UIView!
    @IBOutlet weak var HotelsLeftBarView: UIView!
    @IBOutlet weak var HotelsRightBarView: UIView!
    @IBOutlet weak var HotelsCVView: UIView!
    @IBOutlet weak var HotelsPCView: UIView!
    @IBOutlet weak var HotelsFootView: UIView!
    @IBOutlet weak var HotelsLineRefView: UIView!
    
        // Images
    @IBOutlet weak var HotelsBGImg: UIImageView!
    @IBOutlet weak var HotelsIconImg: UIImageView!
    @IBOutlet weak var HotelsFAMEXLogoImg: UIImageView!
    
        // Stack View
    @IBOutlet weak var HotelsSV: UIStackView!
    
        // Collection View
    @IBOutlet weak var HotelsCV: UICollectionView!
    
        // Page Control
    @IBOutlet weak var HotelsPC: UIPageControl!
    
        // Labels
    @IBOutlet weak var HotelsLbl: UILabel!
    
    
    // MARK: - Properties
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()

        HotelsCV.delegate = self
        HotelsCV.dataSource = self
        HotelsCV.register(UINib(nibName: "HotelsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HotelsCell")
        
    }
    
    // MARK: - Methods
    
    // MARK: - Method Actions

}

    // MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewFlowLayout

extension HotelsViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = HotelsCV.dequeueReusableCell(withReuseIdentifier: "HotelsCell", for: indexPath) as? HotelsCollectionViewCell
        
        
        
        return cell!
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: HotelsCV.frame.width, height: HotelsCV.frame.height)
        
    }

}
