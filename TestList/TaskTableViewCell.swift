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

        func make24hStrings() -> [String] {
           var timeLabel = [String]()
            timeLabel.append("00:00")

           for i in 1...24 {
             let i = i % 24
             var string = i < 10 ? "0" + String(i) : String(i)
             string.append(":00")
            timeLabel.append(string)
           }

           return timeLabel
         }

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
