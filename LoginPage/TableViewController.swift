//
//  TableViewController.swift
//  LoginPage
//
//  Created by Peterson Selvarajah on 26/03/2021.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var avengersTable: UITableView!
    
    //An array containing a list of characters from Avengers
    
    let characters = [
        
        "Iron Man",
        "Hulk",
        "Thor",
        "Black Widow",
        "Falcon"
    
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        avengersTable.delegate = self
        avengersTable.dataSource = self
    }
    

  
}

extension TableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    { print("Cell has been tapped") //Statement to check the selection of individual cells
        
        print(indexPath) //Debug Statement
    
    
}
    
 
    
    
    
}

extension TableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count //sets the number of rows in accordance with the values within the array
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let role = tableView.dequeueReusableCell(withIdentifier: "role", for: indexPath)
        //
        
        role.textLabel?.text = characters[indexPath.row]
        
        return role
        

    }
    
    
    
    


}


