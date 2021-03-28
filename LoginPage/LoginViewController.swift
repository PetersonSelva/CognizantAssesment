//
//  LoginViewController.swift
//  LoginPage
//
//  Created by Peterson Selvarajah on 26/03/2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var Username: UITextField!
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    
    
    @IBAction func LoginTapped(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(identifier: "TableView")
        
        vc.modalPresentationStyle = .overFullScreen
        
        
        present(vc, animated: true)
    }
    

}
