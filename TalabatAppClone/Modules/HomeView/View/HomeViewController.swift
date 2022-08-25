//
//  HomeViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/14/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var offerLbl                 : UILabel!
    @IBOutlet weak var offerDescLbl             : UILabel!
    @IBOutlet weak var offerBtn                 : UIButton!
    @IBOutlet weak var topCollectionView        : UICollectionView!
    @IBOutlet weak var topPicksCollectionView   : UICollectionView!
    @IBOutlet weak var discountsCollectionView  : UICollectionView!
    @IBOutlet weak var brandsCollectionView     : UICollectionView!
    @IBOutlet weak var slidePageControl         : UIPageControl!
    
    //MARK:- Properties
    var presenter       : HomePresenterView?
    var arrCatgories    = [CatgoriesModel]()
    var arrTopPicks     = [CatgoriesModel]()
    var arrBrands       = [BrandsModel]()
    var arrOffers       = [UIImage]()
    var runCounts:Int   = 0
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Presenter
        presenter = HomePresenterView(view: self)
        
        // collectionView Configuration
        self.topCollectionViewConfig()
        self.brandsCollectionViewConfig()
        self.discountsCollectionViewConfig()
        self.topPicksCollectionViewConfig()
        
        // Add Data to collectionViews
        self.addData()
        self.addDatatoTopPicks()
        self.addOffers()
        self.addBrands()
        self.slideShowTimer()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.buttonsStyle()
        self.tabBarStyle()
        
    }

    
    //MARK:- Methods
    private func buttonsStyle() {
        offerBtn.layer.cornerRadius = 20
    }
    
    private func tabBarStyle() {
        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
    }
    //MARK:- Data

    private func addData() {
        arrCatgories = [
            CatgoriesModel(title: "Food", image: UIImage(named: "Burger")!),
            CatgoriesModel(title: "Talabat Mart", image: UIImage(named: "Market")!),
            CatgoriesModel(title: "Groceries", image: UIImage(named: "Grocery")!),
            CatgoriesModel(title: "More Shops", image: UIImage(named: "Shop")!)
        ]
    }
    
    private func addDatatoTopPicks() {
        self.arrTopPicks = [
            CatgoriesModel(title: "Past Orders", image: UIImage(named: "PastOrder")!),
            CatgoriesModel(title: "Value Meals", image: UIImage(named: "Money")!),
            CatgoriesModel(title: "Dessert Lovers", image: UIImage(named: "IceCream")!),
            CatgoriesModel(title: "Pizza Lovers", image: UIImage(named: "Pizza")!),
            CatgoriesModel(title: "Soft Drinks", image: UIImage(named: "Pepsi")!),
            CatgoriesModel(title: "Hot Drinks", image: UIImage(named: "Coffee")!)

        ]
    }
    
    private func addOffers() {
        self.arrOffers = [
            UIImage(named: "FirstOffer")!,
            UIImage(named: "SecondOffer")!,
            UIImage(named: "ThirdOffer")!
        ]
    }
    
    private func addBrands() {
        self.arrBrands = [
            BrandsModel(img: UIImage(named: "Alabd")!, title: "El Abd", duration: "33 min"),
            BrandsModel(img: UIImage(named: "BuffaloBurger")!, title: "Buffalo Burger", duration: "40 min"),
            BrandsModel(img: UIImage(named: "Etoile")!, title: "Etoile", duration: "60 min"),
            BrandsModel(img: UIImage(named: "Hardees")!, title: "Hardees", duration: "1 hour"),
            BrandsModel(img: UIImage(named: "KFC")!, title: "KFC", duration: "1h 33 min"),
            BrandsModel(img: UIImage(named: "PapaJohns")!, title: "Papa Johns", duration: "2h 0 min")
        ]
    }
    
    private func slideShowTimer() {
        
        let timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @objc
    func fireTimer(timer: Timer) {
        if runCounts < self.arrOffers.count  {

            print("index is \(runCounts)")
            
            discountsCollectionView.scrollToItem(at: IndexPath(item: runCounts, section: 0), at: .centeredHorizontally, animated: true)
            runCounts += 1
        }else{
            runCounts = 0
            print("Alarm has been stopped \(runCounts)")

        }
        slidePageControl.currentPage = runCounts
    }
    //MARK:- Actions

    @IBAction func offerBttn(_ sender: UIButton) {
        print("Go To Offer Describtion")
    }
    
    
}
//MARK:- Presenter
extension HomeViewController: HomePresenterPr {
    
    func dataDidLoad() {
        print("Show Data")
    }
    
    func dataFaildLoad() {
        print("Handle the faild")
    }
    
    
}
