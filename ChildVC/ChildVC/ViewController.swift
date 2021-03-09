//
//  ViewController.swift
//  ChildVC
//
//  Created by Gopakumar MP on 3/9/21.
//  Copyright © 2021 Gopakumar MP. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
private var childVC1 = FirstChildVC()
private var childVC2 = SecondChildVC()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.addChild(self.childVC1)
        self.addChild(self.childVC2)
        
        self.view.addSubview(self.childVC1.view)
        self.view.addSubview(self.childVC2.view)

        self.childVC1.didMove(toParent: self)
        self.childVC2.didMove(toParent: self)
    }
    
    override func viewDidLayoutSubviews() {
        
        self.childVC1.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height/3)

        self.childVC2.view.frame = CGRect(x: 0, y: self.view.frame.height/3 , width: self.view.frame.width, height: self.view.frame.height/3 * 2)
    }
    
    
    @IBAction func eventHandler(_ sender: Any) {
        
        guard let control  = sender as? UISegmentedControl else {
            return
        }
        
        if control.selectedSegmentIndex == 0 {
            //self.view.addSubview(self.childVC1)
           // self.view
        } else {
            
        }
        
    }
}

