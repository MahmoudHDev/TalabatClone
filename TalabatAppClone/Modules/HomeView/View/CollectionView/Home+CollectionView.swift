//
//  Home+CollectionView.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource {
    //MARK:- Cell Config

    func topCollectionViewConfig() {
        
        // Top collectionView
        self.topCollectionView.delegate      = self
        self.topCollectionView.dataSource    = self
        // Nibs
        self.topCollectionView.register(CategoriesCollectionViewCell.myNib(), forCellWithReuseIdentifier: CategoriesCollectionViewCell.cellId)
    }
    

    func topPicksCollectionViewConfig() {
        // Top Picks CollectionView
        topPicksCollectionView.delegate     = self
        topPicksCollectionView.dataSource   = self
        // Nibs
        topPicksCollectionView.register(TopPicksCVCell.myNib(), forCellWithReuseIdentifier: TopPicksCVCell.cellId)
    }
    
    func discountsCollectionViewConfig() {
        // Discounts CollectionView
        discountsCollectionView.delegate    = self
        discountsCollectionView.dataSource  = self
        // Nibs
        discountsCollectionView.register(DiscountsCVCell.myNib(), forCellWithReuseIdentifier: DiscountsCVCell.cellId)
        slidePageControl.numberOfPages = arrOffers.count
        

    }
    
    func brandsCollectionViewConfig() {
        
        self.brandsCollectionView.dataSource = self
        self.brandsCollectionView.delegate   = self
        
        self.brandsCollectionView.register(BrandsCollectionVC.myNib(), forCellWithReuseIdentifier: BrandsCollectionVC.cellId)
        
        
    }
    
    //MARK:- Data Source

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == topCollectionView {
            return arrCatgories.count
        }else if collectionView == topPicksCollectionView {
            return self.arrTopPicks.count
        }else if collectionView == discountsCollectionView {
            return self.arrOffers.count
        }else {
            return self.arrBrands.count
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
        }else if collectionView == discountsCollectionView {
            let cell = discountsCollectionView.dequeueReusableCell(withReuseIdentifier: DiscountsCVCell.cellId, for: indexPath) as! DiscountsCVCell
            let imgs = arrOffers[indexPath.row]
            cell.setCell(img: imgs)
            
            return cell
        }else{
            let cell = brandsCollectionView.dequeueReusableCell(withReuseIdentifier: BrandsCollectionVC.cellId, for: indexPath) as! BrandsCollectionVC
            
            let img         = arrBrands[indexPath.row].img ?? UIImage()
            let title       = arrBrands[indexPath.row].title ?? "No Name"
            let duration    = arrBrands[indexPath.row].duration ?? "0 min"
            
            cell.setCell(img: img, title: title, titleDesc: duration)
            
            return cell
        }

    }
}

//MARK:- CollectionView Delegate Flow LayOut
extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        if collectionView == topCollectionView {
            return 10
        }else if collectionView == topPicksCollectionView {
            return 10
        }else {
          return 0
        }
    }
    
    
}

//MARK:- Delegate
extension HomeViewController: UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Item \(indexPath.row)")
    }
    
}
