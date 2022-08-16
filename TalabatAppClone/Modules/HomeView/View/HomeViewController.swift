//
//  HomeViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/14/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var offerLbl             : UILabel!
    @IBOutlet weak var offerDescLbl         : UILabel!
    @IBOutlet weak var offerBtn             : UIButton!
    @IBOutlet weak var topCollectionView    : UICollectionView!
    
    //MARK:- Properties
    var presenter       : HomePresenterView?
    var arrCatgories    = [CatgoriesModel]()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomePresenterView(view: self)
        self.collectionViewConfig()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.buttonsStyle()
        self.tabBarStyle()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.addData()
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
