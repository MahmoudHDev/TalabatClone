//
//  SearchViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/29/22.
//

import UIKit

class SearchViewController: UIViewController {
    //MARK:- Outlets
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTableView: UITableView!
    
    //MARK:- Properties
    
    
    //MARK:- View life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableViewConfig()
        self.searchTextFieldConfig()
    }
    
    //MARK:- Methods
    
    
    //MARK:- Actions
    




}
