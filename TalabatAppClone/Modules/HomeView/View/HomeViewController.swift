//
//  HomeViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/14/22.
//

import UIKit

class HomeViewController: UIViewController {
    //MARK:- Outlets

    
    //MARK:- Properties
    var presenter: HomePresenterView?
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = HomePresenterView(view: self)
    }
    
    
    //MARK:- Methods
    
    
    
    //MARK:- Actions

    
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
