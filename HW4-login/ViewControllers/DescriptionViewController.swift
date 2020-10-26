//
//  DescriptionViewController.swift
//  HW4-login
//
//  Created by Dmitry Tokarev on 25.10.2020.
//

import UIKit

class DescriptionViewController: UIViewController {

    @IBOutlet var fullNameLable: UILabel!
    
    var fullName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLable.text = firstUserDescript.fullName
    }

}
