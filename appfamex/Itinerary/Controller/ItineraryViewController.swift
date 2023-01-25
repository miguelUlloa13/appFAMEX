//
//  ItineraryViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 14/01/23.
//

import UIKit
import CoreData

class ItineraryViewController: UIViewController {
    
    // MARK: - Outlets
    
        // Views
    @IBOutlet weak var ItineraryView: UIView!
    @IBOutlet weak var ItineraryProfileImgView: UIView!
    @IBOutlet weak var ShareBtnView: UIView!
    @IBOutlet weak var ConferenceDaysView: UIView!
    @IBOutlet weak var ConferenceView: UIView!
    
        // Stack Views
    @IBOutlet weak var ItinerarySV: UIStackView!
    
        // Images
    @IBOutlet weak var ItineraryBGImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var ShareBtn: UIButton!
    
        // Segmented Control
    @IBOutlet weak var ConferenceDaysSC: UISegmentedControl!
    
        // Table View
    @IBOutlet weak var ConferenceTV: UITableView!
    
        
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    var itinerarioList = [ITINERARIO]() // Arreglo de objetos de la base de datos local (Entidad ITINERARIO)
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext   // Referencia a la base de datos
    
    var menu: Bool = false
    
    var viewOptionSelect: CGAffineTransform = CGAffineTransform()
    
    let segmentedControlValues = ["Dia 26", "Dia 27", "Dia 28"]
    
    // MARK: - View Life Cycle Method

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildMenuViewController()
        setUpMenu()
        
        ConferenceTV.delegate = self
        ConferenceTV.dataSource = self
        
        ConferenceTV.register(UINib(nibName: "TableViewCellMiItinerario", bundle: nil), forCellReuseIdentifier: "cellMiItinerario")
        
        readTask()
        customViews()

    }
    
    // MARK: - Methods
    
    
    func customViews() {
        

        // Botones
        ShareBtn.setTitle("Compartir Itinerario", for: .normal)
        
        // Segmented Control
        ConferenceDaysSC.removeAllSegments()
        for (index, value) in segmentedControlValues.enumerated() {
            ConferenceDaysSC.insertSegment(withTitle: value, at: index, animated: true)
        }
        ConferenceDaysSC.selectedSegmentIndex = 0
        
        
    }
    
    func save() {       // Funcion para salvar la informacion en la BD local
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
        
        self.ConferenceTV.reloadData()
    }
    
    func readTask() {
        let request: NSFetchRequest<ITINERARIO> = ITINERARIO.fetchRequest()
        
        do {
            itinerarioList = try context.fetch(request)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "MI ITINERARIO")
        myMenu.myView = ItineraryView
        myMenu.myBGImage = ItineraryBGImg
        myMenu.firstViewPosition = ItineraryView.transform
        
    }
    
    private func addChildMenuViewController() {
        
        let storyBoard = UIStoryboard(name: "Menu", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        self.addChild(menuVC)
        menuVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuVC.view)
        NSLayoutConstraint.activate([
            menuVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
            menuVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),   // Constraint derecho
            menuVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),          // Constraint superior
            menuVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)])    // Constraint inferior
        menuVC.didMove(toParent: self)
        self.view.sendSubviewToBack(menuVC.view)

    }

}

extension ItineraryViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itinerarioList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellMiItinerario", for: indexPath) as! TableViewCellMiItinerario
        
        let itinerario = itinerarioList[indexPath.row]
        
        cell.lblTitleConferenciaMiItinerario.text = itinerario.titleConferencia
        cell.lblDateConferenciaMiItinerario.text = itinerario.dateConferencia
        
        cell.btnTrash.tag = indexPath.row
        cell.btnInfo.tag = indexPath.row
        
        cell.btnTrash.addTarget(self, action: #selector(btnTrashAction), for: .touchUpInside)
        cell.btnInfo.addTarget(self, action: #selector(btnInfoAction), for: .touchUpInside)
        
        return cell
    }

    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .normal, title: "Delete") { _, _, _ in self.context.delete(self.itinerarioList[indexPath.row])
            self.itinerarioList.remove(at: indexPath.row)
            self.save()
        }
        deleteAction.backgroundColor = .red
        return UISwipeActionsConfiguration(actions: [deleteAction])
    }
    
    
    @objc func btnTrashAction (sender: UIButton) {
        let indexPathAux = IndexPath(row: sender.tag, section: 0)
        print("Se borro la celda: \(indexPathAux)")
        
        
    }
    
    @objc func btnInfoAction (sender: UIButton) {
  
        //let indexPathAux = itinerarioList[IndexPath(row: sender.tag, section: 0)]
       
        
        let vc = storyboard?.instantiateViewController(identifier: "detailConferencia") as! detailConferenciaViewController
        vc.title = "Detalles"
        let navBarOnModal: UINavigationController = UINavigationController(rootViewController: vc)
        
        vc.titleConferencia = "Hola"
        
        
        self.present(navBarOnModal, animated: true, completion: nil)
        
      
        
    }
    
}

