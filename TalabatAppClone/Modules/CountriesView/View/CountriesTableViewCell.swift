//
//  CountriesTableViewCell.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/13/22.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {
    //MARK:- Outlets
    @IBOutlet weak var countryFlag  : UIImageView!
    @IBOutlet weak var countryCode  : UILabel!
    @IBOutlet weak var countryName  : UILabel!
    
    //MARK:- Properties
    static let cellID = "cell"
    
    
    //MARK:- Nib
    override func awakeFromNib() {
        super.awakeFromNib()
        self.cellStyleConfig()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    //MARK:- Methods
    static func setNib() -> UINib {
        return UINib(nibName: "CountriesTableViewCell", bundle: nil)
    }
    
    func setCell(flag: UIImage, code: String, name:String ) {
        
        self.countryFlag.image  = flag
        self.countryCode.text   = code
        self.countryName.text   = name
    }
    func cellStyleConfig() {
        countryFlag.layer.cornerRadius = 0.5 * countryFlag.bounds.width
    }
    
}
