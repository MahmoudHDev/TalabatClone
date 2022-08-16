//
//  Home+CollectionView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionViewConfig() {
        
        self.topCollectionView.delegate      = self
        self.topCollectionView.dataSource    = self
        
        self.topCollectionView.register(CategoriesCollectionViewCell.myNib(), forCellWithReuseIdentifier: CategoriesCollectionViewCell.cellId)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = topCollectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.cellId, for: indexPath) as! CategoriesCollectionViewCell
        
        return cell
    }
    
}
