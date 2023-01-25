//
//  ProfileViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 24/01/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var ProfileView: UIView!
    @IBOutlet weak var UsrNameView: UIView!
    @IBOutlet weak var UsrNameTxtFieldView: UIView!
    @IBOutlet weak var LineUsrNameView: UIView!
    @IBOutlet weak var ProfileImgView: UIView!
    @IBOutlet weak var ProfileCVView: UIView!
    
        // Stack View
    @IBOutlet weak var ProfileSV: UIStackView!
    
        // Images
    @IBOutlet weak var ProfileBGImg: UIImageView!
    @IBOutlet weak var UserProfileImg: UIImageView!
    @IBOutlet weak var UserIconImg: UIImageView!
    
        // Button
    @IBOutlet weak var SaveChangeBtn: UIButton!
    
        // Collection view
    @IBOutlet weak var ProfileCV: UICollectionView!
    
        // Text Field
    @IBOutlet weak var UsrNameTxtField: UITextField!

    // MARK: - Properties
    private let cellSizeWitdh = UIScreen.main.bounds.width / 5
    let arrayUserProfileImgs: [String] = ["profileImgOne", "profileImgTwo", "profileImgThree", "profileImgFour", "profileImgFive"]
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        // Delegado del textfiel
        UsrNameTxtField.delegate = self
        
        // Delegados del collection view
        ProfileCV.delegate = self
        ProfileCV.dataSource = self
        ProfileCV.register(UINib(nibName: "ProfileCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ProfileCell")
        
        setUpViews()
        setUpTextFields()
        setUpCollectionView()
    }

    // MARK: - Methods
    func setUpViews() {
        
        UsrNameTxtFieldView.layer.cornerRadius = 10
        
    }
    
    func setUpTextFields() {
        
        UsrNameTxtField.backgroundColor = .clear
        
    }
    
    func setUpCollectionView() {
        
        ProfileCV.backgroundColor = .clear
        
    }
    
    // MARK: - Method Actions
}

    // MARK: - UITextFieldDelegate
extension ProfileViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UsrNameTxtField.resignFirstResponder()
        return true
    }
    
}

    // MARK: - UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    // Number of items Collection view
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
            return arrayUserProfileImgs.count
        
    }
    
    // Populate Collecttion view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCell", for: indexPath) as? ProfileCollectionViewCell
        
        let images = UIImage(named: arrayUserProfileImgs[indexPath.row])
        let bgColorView = UIView()
        
        bgColorView.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        cell?.selectedBackgroundView = bgColorView
        
        cell?.ProfileCVCImg.image = images
        cell?.backgroundColor = .clear
        cell?.layer.cornerRadius = 20
        return cell!
        
    }
    
    // Action on Tap Collection view
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        UserProfileImg.image = UIImage(named: arrayUserProfileImgs[indexPath.row])
        
    }

    // Animation Collection View
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        cell.transform = CGAffineTransform(translationX: 0, y: cellSizeWitdh)
        cell.alpha = 0

                UIView.animate(
                    withDuration: 1,
                    delay: 0.3 * Double(indexPath.row),
                    usingSpringWithDamping: 0.8,
                    initialSpringVelocity: 0.1,
                    options: [.curveEaseInOut],
                    animations: {

                        cell.alpha = 1
                        cell.transform = CGAffineTransform(translationX: 0, y: 0)

                    })
    }
    
    // Animation Bounce
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: 0.2) {
            cell?.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }
    }

    // Animation Bounce
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        UIView.animate(withDuration: 0.2) {
            cell?.transform = .identity
        }
    }
  
    // Size items Collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellSizeWitdh, height: cellSizeWitdh)
    }
    
    
}
