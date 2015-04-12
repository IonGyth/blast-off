//
//  MissionTableViewController.swift
//  blast-off
//
//  Created by George Baines on 11/04/2015.
//  Copyright (c) 2015 George Baines. All rights reserved.
//

import UIKit

class MissionTableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    var table_missions = [String]()
    
    var Missions: [Mission] = [Mission]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = NSBundle.mainBundle().pathForResource("GameConfig", ofType: "plist") {
            if let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String, AnyObject> {
                let missions_types = dict["Missions"]!
                for (mission_category, missions) in missions_types as Dictionary<String, AnyObject>{
                    for (mission_name, mission_values) in missions as Dictionary<String, AnyObject>{
                        Missions.append(Mission(Name: mission_name, Category: mission_category, Cost: mission_values["Cost"]! as Int, Research: mission_values["Research"]! as Int))
                    }
                }
            }
        }
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return Missions.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("MissionTypeCell", forIndexPath: indexPath) as? MissionCustomCellTableViewCell
        
        //var cell:MissionCustomCellTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as MissionCustomCellTableViewCell
        
        let singleMission = Missions[indexPath.row]

        println(singleMission.Name)
        println(singleMission.Cost)
        println(singleMission.Research)
        cell!.setCell(singleMission.Name, costLabelText: singleMission.Cost, resourceLabelText: singleMission.Research)
        return cell!
    }

//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let singleMission = Missions[indexPath.row]
//        var missionSummaryViewController: MissionSummaryViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MissionSummaryViewController") as MissionSummaryViewController
//        
//        missionSummaryViewController.missionNameString = singleMission.Name
//        missionSummaryViewController.costInt = singleMission.Cost
//        missionSummaryViewController.researchInt = singleMission.Research
//        
//        self.presentViewController(missionSummaryViewController, animated: true, completion: nil)
//        
//        println("You selected cell #\(indexPath.row)!")
//    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var missionSummaryViewController: MissionSummaryViewController = segue.destinationViewController as MissionSummaryViewController
        
        let singleMission = Missions[self.tableView.indexPathForSelectedRow()!.row]
            
            //self.tableView.indexPathForSelectedRow().row]
        
        missionSummaryViewController.missionNameString = singleMission.Name
        missionSummaryViewController.costInt = singleMission.Cost
        missionSummaryViewController.researchInt = singleMission.Research
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
