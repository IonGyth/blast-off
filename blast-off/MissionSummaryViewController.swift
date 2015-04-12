//
//  MissionSummaryViewController.swift
//  blast-off
//
//  Created by George Baines on 12/04/2015.
//  Copyright (c) 2015 George Baines. All rights reserved.
//

import UIKit

class MissionSummaryViewController: UIViewController {
    
    @IBOutlet weak var missionNameLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var researchLabel: UILabel!
    
    var missionNameString: String!
    var costInt: Int!
    var researchInt: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myStringCost = String(costInt)
        var myStringResearch = String(researchInt)
        
        self.missionNameLabel.text = missionNameString
        self.costLabel.text = myStringCost
        self.researchLabel.text = myStringResearch
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
