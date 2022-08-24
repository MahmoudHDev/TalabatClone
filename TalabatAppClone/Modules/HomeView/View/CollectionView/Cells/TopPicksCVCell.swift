//
//  TopPicksCVCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/19/22.
//

import UIKit

class TopPicksCVCell: UICollectionViewCell {
    //MARK:- Outlets
    @IBOutlet private weak var imageContainerV : UIView!
    @IBOutlet private weak var imgView         : UIImageView!
    @IBOutlet private weak var title           : UILabel!
    
    //MARK:- Properties
    static let cellId = "TopPicksCVCell"
    let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

    //MARK:- Nibs

    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyle()
    }
    
    //MARK:- Methods
    static func myNib() -> UINib {
        return UINib(nibName: "TopPicksCVCell", bundle: nil)
    }
    
    func setCell(imgView: UIImage, title: String) {
        self.imgView.image  = imgView
        self.title.text     = title
    }

    private func cellStyle() {
        imageContainerV.layer.cornerRadius  = 20
        
    }
}
