//
//  CategoriesCollectionViewCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

class CategoriesCollectionViewCell: UICollectionViewCell {
    
    //MARK:- Outlets
    @IBOutlet private weak var imgContainer : UIView!
    @IBOutlet private weak var itemImg      : UIImageView!
    @IBOutlet private weak var title        : UILabel!
    
    //MARK:- Properties
    static let cellId = "CategoriesCollectionViewCell"
    
    //MARK:- NIB

    override func awakeFromNib() {
        super.awakeFromNib()
        self.containerStyle()
    }

    //MARK:- Methods
    private func containerStyle() {
        imgContainer.layer.cornerRadius =  20
        itemImg.layer.cornerRadius =  20
    }

    static func myNib() -> UINib {
        return UINib(nibName: "CategoriesCollectionViewCell", bundle: nil)
    }
    
    func setCell(img: UIImage, title: String) {
        self.itemImg.image  = img
        self.title.text     = title
    }
    
}
