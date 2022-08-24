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
    @IBOutlet weak var slidePageControll        : UIPageControl!
    
    //MARK:- Properties
    var presenter       : HomePresenterView?
    var arrCatgories    = [CatgoriesModel]()
    var arrTopPicks     = [CatgoriesModel]()
    var arrOffers       = [UIImage]()
    var runCounts       = 0
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomePresenterView(view: self)
        self.collectionViewConfig()
        self.addData()
        self.addDatatoTopPicks()
        self.addOffers()
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
    
    private func slideShowTimer() {
        
        let timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    @objc
    
    func fireTimer(timer: Timer) {
        runCounts += 1
        if runCounts >= self.arrOffers.count + 1 {
            timer.invalidate()
            print("Repeat the sequence \(runCounts)")

        }else{
            print("Alarm has been stopped \(runCounts)")

        }

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
