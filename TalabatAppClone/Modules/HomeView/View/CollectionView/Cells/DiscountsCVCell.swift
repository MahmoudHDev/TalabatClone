//
//  DiscountsCVCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/20/22.
//

import UIKit

class DiscountsCVCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var img : UIImageView!
    
    //MARK:- Properties
    static let cellId = "DiscountsCVCell"
    
    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyle()
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "DiscountsCVCell", bundle: nil)
    }
    
    private func cellStyle() {
        self.img.layer.cornerRadius = 16
    }
    
    func setCell(img: UIImage) {
        self.img.image = img
    }
}
