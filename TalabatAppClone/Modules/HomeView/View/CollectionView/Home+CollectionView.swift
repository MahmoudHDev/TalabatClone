//
//  Home+CollectionView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    //MARK:- Cell Config

    func collectionViewConfig() {
        
        // Top collectionView
        self.topCollectionView.delegate      = self
        self.topCollectionView.dataSource    = self
        
        self.topCollectionView.register(CategoriesCollectionViewCell.myNib(), forCellWithReuseIdentifier: CategoriesCollectionViewCell.cellId)
        
        // offersCollectionView
        self.offersCollectionView.delegate       = self
        self.offersCollectionView.dataSource     = self
        
        self.offersCollectionView.register(OffersCollectionViewCell.myNib(), forCellWithReuseIdentifier: OffersCollectionViewCell.cellId)
    }
    //MARK:- Data Source

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return arrCatgories.count
        }else{
            return 1
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == topCollectionView {
            let cell = topCollectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.cellId, for: indexPath) as! CategoriesCollectionViewCell
            
            let imgs    = self.arrCatgories[indexPath.row].image
            let title   = self.arrCatgories[indexPath.row].title

            cell.setCell(img:(imgs ?? UIImage(systemName: "cloud"))!, title: title ?? "No Name")
            return cell
            
        }else{
            let cell = offersCollectionView.dequeueReusableCell(withReuseIdentifier: OffersCollectionViewCell.cellId, for: indexPath) as! OffersCollectionViewCell
            
            cell.setData(timer: "12:00", offerLbl: "Save up to EGP 75",
                         offerDesc: "Limited time offer on resturants to try",
                         img: UIImage(named: "Abstract")!)
            
            return cell

        }

    }
    
    
    //MARK:- Delegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Item \(indexPath.row)")
    }
    
}
