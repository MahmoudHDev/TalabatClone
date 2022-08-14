//
//  ContriesTableViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/13/22.
//

import UIKit

class ContriesTableViewController: UITableViewController {
    //MARK:- Properties

    var countries = [CountriesModel]()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configTableView()
        self.navBarStyle()
        self.addCountres()
        
    }
    //MARK:- Methods
    
    private func configTableView() {
        tableView.register(CountriesTableViewCell.setNib(), forCellReuseIdentifier: CountriesTableViewCell.cellID)
        
        tableView.separatorStyle = .none
    }
    
    private func addCountres() {
        
        // Some Data to show
        self.countries = [CountriesModel(flag: UIImage(named: "egypt"), countryName: "Egypt", countryCode: "+20"),CountriesModel(flag: UIImage(named: "palestine"), countryName: "Palestine", countryCode: "+970"),
                          CountriesModel(flag: UIImage(named: "iraq"), countryName: "Iraq", countryCode: "+964")
        ]
        
    }
    
    private func navBarStyle() {
        UINavigationBar.appearance().barTintColor = .systemPink
        UINavigationBar.appearance().tintColor = UIColor.white
        navigationController?.isNavigationBarHidden = false
        title = "Choose the country"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.backgroundColor = .systemRed
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return countries.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CountriesTableViewCell
        
        let country = countries[indexPath.row]
        
        let countryName = country.countryName
        let countryFlag = country.flag
        let countryCode = country.countryCode
        
        cell.setCell(flag: countryFlag! , code: countryCode ?? "00", name: countryName ?? "No Name")

        return cell
    }

    //MARK:- Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCountry = countries[indexPath.row]
        let storyBoard = UIStoryboard(name: "Information", bundle: nil).instantiateViewController(identifier: "InformationView") as! InformationViewController
        storyBoard.country = selectedCountry
        
        self.navigationController?.pushViewController(storyBoard, animated: true)
    }

}
