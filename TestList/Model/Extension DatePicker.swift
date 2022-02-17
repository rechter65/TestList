//
//  Extension datePicker.swift
//  TestList
//
//  Created by Admin on 09.02.2022.
//

import UIKit

class DatePicker: ToDoViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        datePicker.datePickerMode = .date
        datePicker.addTarget(self, action: #selector(changeDate), for: .valueChanged)
        
}
        
    @IBAction func changeDate(_ sender: UIDatePicker) {
        
    }

}
