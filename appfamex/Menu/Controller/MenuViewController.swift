//
//  MenuViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 07/01/23.
//

import UIKit

class MenuViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var MenuView: UIView!
    @IBOutlet weak var ProfileView: UIView!
    @IBOutlet weak var TicketView: UIView!
    @IBOutlet weak var ProfileImgView: UIView!
    @IBOutlet weak var UsrAndSelectLanguageView: UIView!
    @IBOutlet weak var UsrNameView: UIView!
    @IBOutlet weak var EditProfileView: UIView!
    
        // Stack Views
    @IBOutlet weak var MenuSV: UIStackView!
    @IBOutlet weak var DetailUsrProfileSV: UIStackView!
    
        // Table View
    @IBOutlet weak var MenuTV: UITableView!
    
        // Images
    @IBOutlet weak var ProfileImg: UIImageView!
    @IBOutlet weak var TicketImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var SelectLanguageBtn: UIButton!
    @IBOutlet weak var EditProfileBtn: UIButton!
    
        // Labels
    @IBOutlet weak var UsrLbl: UILabel!
    @IBOutlet weak var UsrNameLbl: UILabel!
    @IBOutlet weak var LicenseLbl: UILabel!
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    private let cellSizeWitdh = UIScreen.main.bounds.width / 5
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        MenuView.layer.cornerRadius = 10
        
            // Degados del table view
            // La vista recibe las acciones del usuario y delega el trabajo a una clase (MenuViewController) para que realice algún cálculo, haga una petición HTTP, etc y luego vuelva a notificar a la vista para indicar que todo ha ido bien.
        MenuTV.delegate = self
        MenuTV.dataSource = self
        
        MenuTV.backgroundColor = .clear
        MenuTV.register(UINib(nibName: "MenuTableViewCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
   
        setUpLabels()
        setUpButtons()
        
    }
    
    // MARK: - Methods
    func setUpLabels() {
        
        UsrLbl.text = "PILOTO:"
        UsrLbl.textColor = .white
        UsrLbl.font = UIFont(name: "Futura", size: 15)
        UsrLbl.adjustsFontSizeToFitWidth = true
        UsrLbl.minimumScaleFactor = 0.5
        
        UsrNameLbl.text = "USERNAME"
        UsrNameLbl.textColor = .white
        UsrNameLbl.font = .Plateia(size: 20)
        UsrNameLbl.adjustsFontSizeToFitWidth = true
        UsrNameLbl.minimumScaleFactor = 0.5
        
        LicenseLbl.text = "©2023 FAMEX, México.\nTodos los derechos reservados|Aviso de Privacidad"
        LicenseLbl.numberOfLines = 0
        LicenseLbl.textColor = .white
        LicenseLbl.adjustsFontSizeToFitWidth = true
        LicenseLbl.minimumScaleFactor = 0.5
        LicenseLbl.textAlignment = .center
        
    }
    
    func setUpButtons() {
        
        EditProfileBtn.setTitle("Editar Perfil", for: .normal)
        EditProfileBtn.setTitleColor(.link, for: .normal)
        EditProfileBtn.titleLabel?.font = UIFont(name: "Futura", size: 15)
        
        SelectLanguageBtn.setTitle("Lenguaje", for: .normal)
        SelectLanguageBtn.setTitleColor(.link, for: .normal)
        SelectLanguageBtn.titleLabel?.font = UIFont(name: "Futura", size: 15)
        
    }
    
    // MARK: - Method Actions

}

    // MARK: - UITableViewDelegate, UITableViewDataSource
extension MenuViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myMenu.menuSections.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MenuTV.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuTableViewCell
        
        cell.TitleSection.text = myMenu.menuSections[indexPath.row].title                  // Colocar el titulo a cada celda
        cell.SectionImg.image = UIImage(named: myMenu.menuSections[indexPath.row].image)   // Colocar la imagen a cada celda
    
        
            // Apply plateia font
        if indexPath.row == 1 || indexPath.row == 7 || indexPath.row == 10{
            cell.TitleSection.font = .Plateia(size: 16)
        } else {
            cell.TitleSection.font = .Futura(size: 20)
        }
        
            // Apply Gradient color
        if indexPath.row == 2 {
            let gradient = UIImage.gradientImage(bounds: cell.TitleSection.bounds, colors: [.blue, .white, .red])
            cell.TitleSection.textColor = UIColor(patternImage: gradient)
        } else {
            cell.TitleSection.textColor = .white
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: myMenu.menuSections[indexPath.row].segueIdentifier, sender: self)
        
    }

}
