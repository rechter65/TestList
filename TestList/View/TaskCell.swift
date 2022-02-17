//
//  TaskCell.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import UIKit

class TaskCell: UITableViewCell {
    
    @IBOutlet var timeLabel: UILabel!
    @IBOutlet var timeTaskLabel: UILabel!
    @IBOutlet var taskNameLabel: UILabel!
    
    let currentDate = Date()
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
//    func configure(with task: Task) {
//        
//        taskNameLabel.text = task.name
//        
//    }
    
}
    

