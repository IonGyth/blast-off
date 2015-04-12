//
//  FirstViewController.swift
//  blast-off
//
//  Created by George Baines on 11/04/2015.
//  Copyright (c) 2015 George Baines. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // full path for local file data.plist
    //var documentDir = String()
    //var path = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
        
        
        
        //documentDir = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        //path = documentDir.stringByAppendingPathComponent("UserData.plist")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var counter = 0;
    
    func update(){
        //([[0, 0]] as NSArray).writeToFile(path, atomically: true)
        // read the file
        /* Note: assumes file is already present */
        //var data = NSArray(contentsOfFile: path) as [[Int:Int]]
        
        //var userMoney = 0
        //var userResource = 0
        
        //for ( money, resources ) in data[0]{
        //    userMoney = money
        //    userResource = resources
        //}

        // append to the file
        
        // write to the file
        //([userMoney++, userResource] as NSArray).writeToFile(path, atomically: true)
        
        //counter++
        //println(counter)
    }

}

