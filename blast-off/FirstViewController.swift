//
//  FirstViewController.swift
//  blast-off
//
//  Created by George Baines on 11/04/2015.
//  Copyright (c) 2015 George Baines. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var counter = 0;
    
    func update(){
        counter++
        println(counter)
    }

}

