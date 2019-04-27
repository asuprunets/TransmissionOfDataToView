//
//  SecondViewController.swift
//  TransmssionOfDataToVIew
//
//  Created by Aleksandr Suprunets on 4/27/19.
//  Copyright © 2019 Aleksandr Suprunets. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var showLable: UILabel!
    
    var lableText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showLable.text = lableText
        
    }
    
}
 
    

