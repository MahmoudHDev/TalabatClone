//
//  ManageAccount+TableView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 9/4/22.
//

import UIKit
//MARK:- TableView Config

extension ManageAccountViewController {
    
    func accountInfoTableViewConfig() {
        accountInfoTableView.dataSource = self
        accountInfoTableView.delegate   = self
    }
}


//MARK:- DataSource

extension ManageAccountViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = accountInfoTableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        
        return cell
    }
    
    
}

//MARK:- Delegate

extension ManageAccountViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("index path selected \(indexPath.row)")
    }
}
