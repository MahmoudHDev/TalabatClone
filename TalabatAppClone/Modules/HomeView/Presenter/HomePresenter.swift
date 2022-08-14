//
//  HomePresenter.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/14/22.
//

import Foundation

//MARK:- Protocol
protocol HomePresenterPr {
    func dataDidLoad()
    func dataFaildLoad()
}

//MARK:- View
class HomePresenterView {
    //MARK:- Properties
    var view: HomePresenterPr?
    
    //MARK:- Init
    init(view: HomePresenterPr) {
        self.view = view
    }
    
    //MARK:- Methods



}

