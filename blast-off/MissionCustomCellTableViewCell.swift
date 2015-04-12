//
//  MissionCustomCellTableViewCell.swift
//  blast-off
//
//  Created by George Baines on 12/04/2015.
//  Copyright (c) 2015 George Baines. All rights reserved.
//

import UIKit

class MissionCustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var missionLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    @IBOutlet weak var resourceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(missionLabelText: String, costLabelText: Int, resourceLabelText:Int){
        self.missionLabel.text = missionLabelText
        self.costLabel.text = String(costLabelText)
        self.resourceLabel.text = String(resourceLabelText)
    }

}
