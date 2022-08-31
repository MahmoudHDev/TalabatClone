//
//  Search+TextField.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/29/22.
//

import UIKit

extension SearchViewController: UITextFieldDelegate {
    
    func searchTextFieldConfig() {
        searchTextField.delegate = self
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        // Logic for search in the DB
        print(textField.text)
    }
    
}
