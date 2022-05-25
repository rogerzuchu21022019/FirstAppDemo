//
//  ViewController.swift
//  FirstAppDemo
//
//  Created by Vu Thanh Nam on 06/05/2022.
//

import UIKit


class HomeViewController: UIViewController {
    
    @IBOutlet weak var tfUser: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBAction func btnSingIn(_ sender: Any) {
        let userName = tfUser.text
        let password = tfPassword.text
        print("\(String(describing: userName))")
        print("\(String(describing: password))")
        if  userName?.isEmpty != nil{
            print("\(String(describing: userName!))")
            print("\(String(describing: password!))")
            print("Pressed")
            self.performSegue(withIdentifier: "HomeScreenSeque", sender: self)
        }else {
            
            print("not empty")
        }




    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
     
}

        

