//
//  Home+CollectionView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    //MARK:- Cell Config

    func collectionViewConfig() {
        
        // Top collectionView
        self.topCollectionView.delegate      = self
        self.topCollectionView.dataSource    = self
        
        self.topCollectionView.register(CategoriesCollectionViewCell.myNib(), forCellWithReuseIdentifier: CategoriesCollectionViewCell.cellId)
        
        
        // Top Picks CollectionView
        topPicksCollectionView.delegate     = self
        topPicksCollectionView.dataSource   = self
        
        topPicksCollectionView.register(TopPicksCVCell.myNib(), forCellWithReuseIdentifier: TopPicksCVCell.cellId)
        
        // Discounts CollectionView
        discountsCollectionView.delegate    = self
        discountsCollectionView.dataSource  = self
        
        discountsCollectionView.register(DiscountsCVCell.myNib(), forCellWithReuseIdentifier: DiscountsCVCell.cellId)
        
    }
    
    //MARK:- Data Source

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == topCollectionView {
            return arrCatgories.count
        }else if collectionView == topPicksCollectionView {
            return self.arrTopPicks.count
        }else {
            return self.arrOffers.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == topCollectionView {
            let cell    = topCollectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCollectionViewCell.cellId, for: indexPath) as! CategoriesCollectionViewCell
            
            let imgs    = self.arrCatgories[indexPath.row].image
            let title   = self.arrCatgories[indexPath.row].title

            cell.setCell(img:(imgs ?? UIImage(systemName: "cloud"))!, title: title ?? "No Name")
            return cell
            
        }else if collectionView == topPicksCollectionView {

            let cell    = topPicksCollectionView.dequeueReusableCell(withReuseIdentifier: TopPicksCVCell.cellId, for: indexPath) as! TopPicksCVCell
            let title   = arrTopPicks[indexPath.row].title ?? ""
            let img     = arrTopPicks[indexPath.row].image
            cell.setCell(imgView: img ?? UIImage(), title: title)
            
            return cell
        }else{
            let cell = discountsCollectionView.dequeueReusableCell(withReuseIdentifier: DiscountsCVCell.cellId, for: indexPath) as! DiscountsCVCell
            let imgs = arrOffers[indexPath.row]
            cell.setCell(img: imgs)
            
            return cell
        }

    }
}

//MARK:- Delegate
extension HomeViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Item \(indexPath.row)")
    }
    
}
