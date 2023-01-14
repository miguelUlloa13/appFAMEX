//
//  HomeViewController.swift
//  appfamex
//
//  Created by Miguel Angel Bric Ulloa on 08/01/23.
//

import UIKit
import iCarousel

class HomeViewController: UIViewController {
    
    // MARK: - Outlets
        // Views
    @IBOutlet weak var HomeView: UIView!
    @IBOutlet weak var HomeCarouselView: UIView!
    @IBOutlet weak var ButtonsView: UIView!
    @IBOutlet weak var SponsorCarouselView: UIView!
    @IBOutlet weak var ShowBtnView: UIView!
    @IBOutlet weak var ItineraryBtnView: UIView!
    
        // Stack Views
    @IBOutlet weak var HomeSV: UIStackView!
    @IBOutlet weak var ButtonsSV: UIStackView!
    
        // Images
    @IBOutlet weak var HomeBGImg: UIImageView!
    @IBOutlet weak var ShowIconImg: UIImageView!
    @IBOutlet weak var ItineraryIconImg: UIImageView!
    
        // Buttons
    @IBOutlet weak var ShowBtn: UIButton!
    @IBOutlet weak var ItineraryBtn: UIButton!
    
        // Labels
    @IBOutlet weak var SponsorLbl: UILabel!
    
        // Carousels
 
    @IBOutlet weak var HomeCarousel: iCarousel!
    @IBOutlet weak var SponsorCarousel: iCarousel!
    
    
    // MARK: - Properties
    
    let myMenu = MenuModel()    // Object type Menu
    
    let HomeCarouselImgs = ["HomeCarouselImgOne", "HomeCarouselImgTwo", "HomeCarouselImgThree", "HomeCarouselImgFour", "HomeCarouselImgFive"]
    
    let SponsorsCarouselImgs = ["SponsorCarouselImgOne", "SponsorCarouselImgTwo", "SponsorCarouselImgThree"]
    
    // MARK: - View Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.01175179426, green: 0.1716858149, blue: 0.3742573261, alpha: 1)
        
        HomeCarousel.delegate = self
        HomeCarousel.dataSource = self
        SponsorCarousel.delegate = self
        SponsorCarousel.dataSource = self

        setUpLabels()
        setUpButtons()
        setUpCarousels()
        addChildMenuController()
        setUpMenu()
        
    }
    
    // MARK: - Methods
    func setUpLabels() {
        SponsorLbl.text = "Patrocinado por"
        SponsorLbl.textColor = .white
        SponsorLbl.font = .Futura(size: 20)
        SponsorLbl.adjustsFontSizeToFitWidth = true
        SponsorLbl.minimumScaleFactor = 0.5
    }
    
    func setUpButtons() {
        ShowBtn.titleLabel?.text = "Evento"
        ShowBtn.titleLabel?.font = .Plateia(size: 20)
        ItineraryBtn.titleLabel?.text = "Mi Itinerario"
        ItineraryBtn.titleLabel?.font = .Plateia(size: 20)
    }
    
    func setUpCarousels() {
        HomeCarousel.type = .rotary
        HomeCarousel.backgroundColor = .clear
        CarouselhandleTimer(myCarousel: HomeCarousel)
        SponsorCarousel.type = .linear
        SponsorCarousel.backgroundColor = .clear
        CarouselhandleTimer(myCarousel: SponsorCarousel)
    }
    
    func CarouselhandleTimer(myCarousel: iCarousel) {
        var activeItemIndex = 0
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (timer) in   // Funcion autoscroll
            activeItemIndex += 1
            if activeItemIndex == myCarousel.numberOfItems {
                activeItemIndex = 0
            }
            myCarousel.scrollToItem(at: activeItemIndex, duration: 3)
        }
    }
    
    func setUpMenu() {
        
        myMenu.navBar = navigationController!
        myMenu.navItem = navigationItem
        
        myMenu.customNavigationBar(viewTitle: "INICIO")
        myMenu.myView = HomeView
        myMenu.myBGImage = HomeBGImg
        myMenu.firstViewPosition = HomeView.transform
        
    }
    
    private func addChildMenuController() {
        
        let storyBoard = UIStoryboard(name: "Menu", bundle: nil)
        let menuVC = storyBoard.instantiateViewController(withIdentifier: "MenuVC")
        self.addChild(menuVC)
        menuVC.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(menuVC.view)
        NSLayoutConstraint.activate([
            menuVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),   // Constraint Izquierdo
            menuVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),   // Constraint derecho
            menuVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),          // Constraint superior
            menuVC.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0)])    // Constraint inferior
        menuVC.didMove(toParent: self)
        self.view.sendSubviewToBack(menuVC.view)

    }
    
    // MARK: - Method Actions

}


    // MARK: - iCarouselDelegate, iCarouselDataSource
extension HomeViewController: iCarouselDelegate, iCarouselDataSource{
    
    // Method to set number of images in the carousel
    func numberOfItems(in carousel: iCarousel) -> Int {
        
        var imageNumbersReturn:Int?
        if carousel == self.HomeCarousel {
            let imageNumbers = HomeCarouselImgs.count
            imageNumbersReturn = imageNumbers
        }
        if carousel == self.SponsorCarousel {         // Carrusel Banners
            let imageNumbers = SponsorsCarouselImgs.count
            imageNumbersReturn = imageNumbers
        }

        return imageNumbersReturn!
    }

    // Method to set images in the carousel
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        
        var viewsToReturn = UIView()
        
        if carousel == self.HomeCarousel {
            // create a UIView
            let HomeCarouselview = UIView(frame: CGRect(x: 0, y: 0, width: HomeCarousel.frame.size.width, height: HomeCarousel.frame.size.height))
            
            // Create a UIImage
            let imgPackCarousel = UIImageView(frame: HomeCarouselview.bounds)
            imgPackCarousel.contentMode = .scaleAspectFit
            imgPackCarousel.image = UIImage(named: HomeCarouselImgs[index])
            HomeCarouselview.addSubview(imgPackCarousel)
            
            viewsToReturn = HomeCarouselview
        }
        if carousel == self.SponsorCarousel {
            // create a UIView
            let SponsorCarouselView = UIView(frame: CGRect(x: 0, y: 0, width: SponsorCarousel.frame.size.width, height: SponsorCarousel.frame.size.height))
            
            // Create a UIImage
            let imgPackCarousel = UIImageView(frame: SponsorCarouselView.bounds)
            imgPackCarousel.contentMode = .scaleToFill
            imgPackCarousel.image = UIImage(named: SponsorsCarouselImgs[index])
            SponsorCarouselView.addSubview(imgPackCarousel)
            
            viewsToReturn = SponsorCarouselView
        }
        
        return viewsToReturn
        
    }

    // Method to set spacing between images in the carousel
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
        if carousel == self.HomeCarousel {
            if option == .spacing {
                return 0.3
            }
        }
        return value
    }
}
