//
//  ViewController.swift
//  GestureDemo
//
//  Created by Avani Patel on 6/8/20.
//  Copyright © 2020 Avani Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer){
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.left:
            print("swipe left gesture")
        case UISwipeGestureRecognizer.Direction.right:
            print("swipe right gesture")
        default:
            break
        }
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            print("phone is shaking")
        }
    }
    
}

