//
//  SelfViewController.swift
//  HW4-login
//
//  Created by Dmitry Tokarev on 24.10.2020.
//

import UIKit

class SelfViewController: UIViewController {
    
    @IBOutlet var welcomeUserLable: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLable.text = "Welcome, \(userName)"
    }
    
    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
}
