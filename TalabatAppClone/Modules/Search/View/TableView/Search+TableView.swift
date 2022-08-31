//
//  Search+TableView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/29/22.
//

import UIKit

//MARK:- TableView config
extension SearchViewController {
    
    func tableViewConfig() {
        self.searchTableView.delegate       = self
        self.searchTableView.dataSource     = self
        searchTableView.register(SearchTableViewCell.myNib(), forCellReuseIdentifier: SearchTableViewCell.cellId)
        searchTableView.separatorStyle      = .none
    }
    
    
}

//MARK:- TableView DataSource
extension SearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = searchTableView.dequeueReusableCell(withIdentifier: SearchTableViewCell.cellId, for: indexPath) as! SearchTableViewCell
        cell.setCell(img: UIImage(systemName: "house")!, title: "Search Key Word")
        return cell
    }
    
    
    
}

//MARK:- TableView Delegate
extension SearchViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath \(indexPath.row)")
    }
}

