//
//  InformationViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/13/22.
//

import UIKit

class InformationViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var talabatLogoLbl       : UILabel!
    @IBOutlet weak var talabatDescLbl       : UILabel!
    @IBOutlet weak var loginTopLbl          : UILabel!
    @IBOutlet weak var loginDescLbl         : UILabel!
        
    @IBOutlet weak var usernameTextField    : UITextField!
    @IBOutlet weak var passwordTextField    : UITextField!
        
    @IBOutlet weak var usernameView         : UIView!
    @IBOutlet weak var passwordView         : UIView!
    
    @IBOutlet weak var seePasswordBtn       : UIButton!
    
    @IBOutlet weak var loginBtn             : UIButton!
    @IBOutlet weak var forgetPassBtn        : UIButton!
    @IBOutlet weak var regBtn               : UIButton!

    
    //MARK:- Properties
    var country: CountriesModel?

    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    //MARK:- Methods

    //MARK:- Actions
    
    @IBAction func loginBttn(_ sender: UIButton)  {
        print("Login button")
    }
    
    @IBAction func forgetPassBttn(_ sender: UIButton)  {
        print("Forget password Button")
    }

    @IBAction func regBtn(_ sender: UIButton)  {
        print("register Button")
    }
}
