//
//  SecondScreenViewController.swift
//  FirstAppDemo
//
//  Created by Vu Thanh Nam on 06/05/2022.
//
import UIKit
class SecondScreenViewController:UIViewController{
    
    //Outlets
    @IBOutlet weak var ivGetFromInternet: UIImageView!
    
    //Actions
    
    @IBAction func GetImage(_ sender: Any) {
        //Create URL
        let url:URL? = URL(string:"https://scontent.fsgn2-5.fna.fbcdn.net/v/t39.30808-6/280195164_685018982754805_8216554724151973259_n.jpg?_nc_cat=104&ccb=1-6&_nc_sid=09cbfe&_nc_ohc=jQ85mjTxankAX95R9pR&_nc_ht=scontent.fsgn2-5.fna&oh=00_AT8MVtioX9apalu69irN3delUGdXM-FL_fmDJBlVsRRNGQ&oe=627C73EB")
        //Create Data
        do {
            let data = try Data(contentsOf: url!)
            ivGetFromInternet.image = UIImage(data: data)
        } catch  {
            print("Error")
        }
        //Show
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeFunc(gesture: )))
        swipeLeft.direction = .right
        self.view.addGestureRecognizer(swipeLeft)
        Timer.scheduledTimer(withTimeInterval: 6, repeats: true){
            (timer) in
            self.ivGetFromInternet.isHighlighted = true
        }
    }
    
    
    @objc func swipeFunc(gesture:UISwipeGestureRecognizer){
        if gesture.direction == .right{
            print("Swipe Left")
            self.performSegue(withIdentifier: "LeftSeque", sender: self)
        }
    }
   
    
}
