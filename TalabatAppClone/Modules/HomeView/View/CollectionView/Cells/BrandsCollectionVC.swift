//
//  BrandsCollectionVC.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/25/22.
//

import UIKit

class BrandsCollectionVC: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet weak var img          : UIImageView!
    @IBOutlet weak var title        : UILabel!
    @IBOutlet weak var titleDesc    : UILabel!
    
    //MARK:- Properties
    static let cellId = "BrandsCollectionVC"
    
    //MARK:- Nib Life Cycle

    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyle()
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "BrandsCollectionVC", bundle: nil)
    }
    
    private func cellStyle() {
//        containerV.layer.cornerRadius = 16
    }
    
    func setCell(img: UIImage, title: String, titleDesc: String) {
        self.img.image = img
        self.title.text = title
        self.titleDesc.text = titleDesc
    }
    

}
