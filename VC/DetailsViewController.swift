//
//  DetailsViewController.swift
//  PersonsList
//
//  Created by Vladimir Zhirov on 11/29/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var emailLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    var name: String!
    var email: String!
    var phone: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = name
        emailLabel.text = email
        phoneLabel.text = phone
        
    }
    
}
