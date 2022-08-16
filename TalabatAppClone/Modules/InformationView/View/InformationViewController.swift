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
    var presenter   : InformationPresenterView?
    var country     : CountriesModel?
    var canSeePass  : Bool = true
    private let dummyDatabase = [User(email: "admin@admin.com", password: "password")]
    var sceneDelegate: SceneDelegate? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let delegate = windowScene.delegate as? SceneDelegate else { return nil }
        return delegate
    }
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter = InformationPresenterView(view: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = "Talabat \(country?.countryName ?? "")"
        self.textFieldStyle()
        self.buttonsStyle()
    }
    
    //MARK:- Methods
    private func textFieldStyle() {
    
        usernameView.layer.cornerRadius         = 25
        passwordView.layer.cornerRadius         = 25
    
        usernameView.backgroundColor            = #colorLiteral(red: 1, green: 0.1568113565, blue: 0.2567096651, alpha: 1)
        passwordView.backgroundColor            = #colorLiteral(red: 1, green: 0.1568113565, blue: 0.2567096651, alpha: 1)
        
        usernameTextField.backgroundColor       = .white
        passwordTextField.backgroundColor       = .white
        
        usernameTextField.layer.cornerRadius    = 25
        passwordTextField.layer.cornerRadius    = 25
        
        usernameTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
        
        passwordTextField.isSecureTextEntry = true
        
        
        usernameTextField.text = "admin@admin.com"
        passwordTextField.text = "password"
    }
    
    private func buttonsStyle() {
        loginBtn.layer.cornerRadius = 25

    }
    
    //MARK:- Actions
    
    @IBAction func loginBttn(_ sender: UIButton)  {
        // Login to database...
        let email       = self.usernameTextField.text ?? ""
        let password    = self.passwordTextField.text ?? ""
        if let user = dummyDatabase.first(where: { user in
            user.email == email && user.password == password
        }) {
            print("hi \(user.email)")
            if let homeVC = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(withIdentifier: "HomeView") as? UITabBarController {
                UserDefaults.standard.set(true, forKey: "isFirstLogin")
                if #available(iOS 13.0, *) {
                    self.sceneDelegate?.window?.rootViewController = homeVC
                    self.sceneDelegate?.window?.makeKeyAndVisible()
                } else {
                    let appdelegate = UIApplication.shared.delegate as! AppDelegate
                    appdelegate.window!.rootViewController = homeVC
                }
            }
        }
    }
    
    @IBAction func seePassBttn() {
        
        if canSeePass {
            passwordTextField.isSecureTextEntry = false
            seePasswordBtn.setImage(UIImage(systemName: "eye.fill")!, for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            seePasswordBtn.setImage(UIImage(systemName: "eye.slash.fill")!, for: .normal)
        }
        
        canSeePass = !canSeePass
    }
    
    @IBAction func forgetPassBttn(_ sender: UIButton)  {
        print("Forget password Button")
    }

    @IBAction func regBtn(_ sender: UIButton)  {
        print("register Button")
    }
    
}

//MARK:- Presenter

extension InformationViewController : InformationPresenterPr {
    func loginSuccecceded() {
        print("Login Successed")
    }
    
    func loginfaild() {
        print("Password or username is not correct")
    }
    
}
