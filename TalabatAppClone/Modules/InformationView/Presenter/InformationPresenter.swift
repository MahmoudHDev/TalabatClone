//
//  InformationPresenter.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/14/22.
//

import Foundation
//MARK:- Protocol
protocol InformationPresenterPr {
    
    func loginSuccecceded()
    func loginfaild()
}

//MARK:- View
class InformationPresenterView {
    
    //MARK:- Proporties

    var view: InformationPresenterPr?
    
    //MARK:- Init
    
    init(view: InformationPresenterPr) {
        self.view = view
    }
    
    //MARK:- Methods

    
}
