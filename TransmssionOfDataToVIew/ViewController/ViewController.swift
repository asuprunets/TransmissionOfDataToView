//
//  ViewController.swift
//  TransmssionOfDataToVIew
//
//  Created by Aleksandr Suprunets on 4/27/19.
//  Copyright © 2019 Aleksandr Suprunets. All rights reserved.
//

import UIKit

let user = "Alex"
let password = "12"

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for seque: UIStoryboardSegue, sender: Any?){
        
        if seque.identifier == "enter" {
            let secondView = seque.destination as! SecondViewController
            
            if userName.text == user && userPassword.text == password {
                secondView.lableText = "You entered"}
            else {
                secondView.lableText = "Wrong Username or Password"
            }
        }
        
        if seque.identifier == "showUserName" {
            let secondView = seque.destination as! SecondViewController
            secondView.lableText = "Your name is \(user)"
        }
        
        if seque.identifier == "showUserPassword" {
            let secondView = seque.destination as! SecondViewController
            secondView.lableText = "Your password is \(password)"
        }
}
    
}

extension ViewController {
    @IBAction func backWard(seque: UIStoryboardSegue){
        userName.text = ""
        userPassword.text = ""
        
    }
}
