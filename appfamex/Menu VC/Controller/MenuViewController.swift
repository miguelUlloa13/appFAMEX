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
    
    /*
    struct MenuModel {                      // Modelo del menu
        var title = String()                // Nombre de la seccion
        var segueIdentifier = String()      // Identificador del segue
        var image = String()                // Imagen de la seccion
    }
    
    // Arreglo con las secciones del menu
    var menuSections: [MenuModel] = [
        
        MenuModel(title: "Inicio",                              // Home
                  segueIdentifier: "InicioSegue",
                  image: "HomeIconImg"),
        MenuModel(title: "FAMEX",                               // FAMEX
                  segueIdentifier: "FAMEXSegue",
                  image: "FAMEXIconImg"),
        MenuModel(title: "FRANCIA",                             // France
                  segueIdentifier: "FRANCIASegue",
                  image: "FranceIconImg"),
        MenuModel(title: "Evento",                              // Show
                  segueIdentifier: "EventoSegue",
                  image: "ShowIconImg"),
        MenuModel(title: "Mi Itinerario",                       // Itinerary
                  segueIdentifier: "ItinerarioSegue",
                  image: "ItineraryIconImg"),
        MenuModel(title: "Restaurantes",                        // Restaurants
                  segueIdentifier: "RestaurantesSegue",
                  image: "RestaurantsIconImg"),
        MenuModel(title: "Espectáculo Aéreo",                   // Air Show
                  segueIdentifier: "EspectAerSegue",
                  image: "AirShowIconImg"),
        MenuModel(title: "FAMEX EN MUMA",                       // MUMA
                  segueIdentifier: "MUMASegue",
                  image: "MUMAIconImg"),
        MenuModel(title: "Accesos P.C.D",                       // PWD Accesibility (Accesibilty for Person with Disabilities)
                  segueIdentifier: "AccesSegue",
                  image: "PWDAccesIconImg"),
        MenuModel(title: "Sanitización",                        // Sanitization
                  segueIdentifier: "SanitizacionSegue",
                  image: "SanitizationIconImg"),
        MenuModel(title: "PRE-FAMEX",                           // Get Ready FAMEX
                  segueIdentifier: "PreparateSegue",
                  image: "GetReadyIconImg"),
        MenuModel(title: "Configuración",                       // Settings
                  segueIdentifier: "ConfigSegue",
                  image: "SettingIconImg")
    
    ]
    
     */
    
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

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
        //return menuSections.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = MenuTV.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuTableViewCell
        
        cell.TitleSection.text = myMenu.menuSections[indexPath.row].title                  // Colocar el titulo a cada celda
        cell.SectionImg.image = UIImage(named: myMenu.menuSections[indexPath.row].image)   // Colocar la imagen a cada celda
        
        //cell.TitleSection.text = menuSections[indexPath.row].title                  // Colocar el titulo a cada celda
        //cell.SectionImg.image = UIImage(named: menuSections[indexPath.row].image)   // Colocar la imagen a cada celda
        
            // Apply plateia font
        if indexPath.row == 1 || indexPath.row == 7 || indexPath.row == 10{
            cell.TitleSection.font = .Plateia(size: 16)
        }
        
            // Apply Gradient color
        if indexPath.row == 2 {
            let gradient = UIImage.gradientImage(bounds: cell.TitleSection.bounds, colors: [.blue, .white, .red])
            cell.TitleSection.textColor = UIColor(patternImage: gradient)
        }
        
        return cell
        
    }

}
