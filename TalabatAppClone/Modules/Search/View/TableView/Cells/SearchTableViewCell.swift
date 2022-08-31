//
//  SearchTableViewCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/31/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {
    //MARK:- Outlets
    @IBOutlet weak var img  : UIImageView!
    @IBOutlet weak var title: UILabel!
    
    //MARK:- Properties
    static let cellId = "SearchTableViewCell"
    
    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.cellStyle()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK:- Methods
    
    static func myNib() -> UINib {
        return UINib(nibName: "SearchTableViewCell", bundle: nil)
    }
    
    func setCell(img: UIImage, title: String) {
        self.img.image = img
        self.title.text = title
    }
    
    func cellStyle() {
        self.img.layer.cornerRadius = 8
        
    }
}
