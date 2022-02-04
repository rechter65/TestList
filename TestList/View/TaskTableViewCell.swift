//
//  TaskTableViewCell.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var timeTaskLabel: UILabel!
    @IBOutlet var taskNameLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
