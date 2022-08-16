//
//  OffersCollectionViewCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/16/22.
//

import UIKit

class OffersCollectionViewCell: UICollectionViewCell {

    //MARK:- Outlets
    @IBOutlet weak var containerV       : UIView!
    @IBOutlet weak var timerContainer   : UIView!
    @IBOutlet weak var timerLbl         : UILabel!
    @IBOutlet weak var offerLBl         : UILabel!
    @IBOutlet weak var offerDesc        : UILabel!
    
    @IBOutlet weak var bgImg            : UIImageView!

    //MARK:- Properties
    static let cellId = "OffersCollectionViewCell"

    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        self.viewStyles()
    }
    
    //MARK:- Methods

    static func myNib() -> UINib {
        return UINib(nibName: "OffersCollectionViewCell", bundle: nil)
    }
    
    private func viewStyles() {
        containerV    .layer.cornerRadius = 20
        timerContainer.layer.cornerRadius = 20
        
    }
    
    func setData(timer: String, offerLbl: String, offerDesc: String, img: UIImage) {
        
        self.timerLbl.text  = timer
        self.offerLBl.text  = offerLbl
        self.offerDesc.text = offerDesc
        self.bgImg.image    = img
        
    }
    
}
