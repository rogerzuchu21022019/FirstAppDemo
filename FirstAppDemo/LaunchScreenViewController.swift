//
//  LaunchScreenViewController.swift
//  FirstAppDemo
//
//  Created by Vu Thanh Nam on 10/05/2022.
//

import UIKit

class LaunchScrennViewController:UIViewController{
    @IBOutlet weak var ivSplashScreen: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Timer.scheduledTimer(withTimeInterval: 3, repeats: true){
            (timer) in
            self.ivSplashScreen.isHighlighted = true
        }
    }
}
