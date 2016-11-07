//
//  ViewController.swift
//  And Still It Moves
//
//  Created by Bandaru,Sreekanth on 11/7/16.
//  Copyright © 2016 Bandaru Sreekanth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myIV: UIImageView!
    var startPoint:CGPoint!
    var tapGR:UITapGestureRecognizer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tapGR = UITapGestureRecognizer(target: self, action: Selector("tapper:"))
        tapGR.numberOfTapsRequired = 2 // Only triggered by a double tap
        myIV.addGestureRecognizer(tapGR) // Associate tapGR with myUIView2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func handlePan(panGR:UIPanGestureRecognizer) -> Void {
        let translation:CGPoint = panGR.translationInView(myIV)
        print(translation)
        if panGR.state == .Began {
            print("Here we go! -- \(translation)")
            startPoint = myIV.frame.origin
        }
            else if panGR.state == .Ended {
                print("There we went! -- \(translation)")
            }
        myIV.frame.origin.x = startPoint.x + translation.x
        myIV.frame.origin.y = startPoint.y + translation.y
        }
    func tapper(tapGR:UITapGestureRecognizer)->Void{
        print(tapGR.description)
        
    }
}

