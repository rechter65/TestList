//
//  ToDoViewController.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import UIKit

class ToDoViewController: UIViewController {
    
    @IBOutlet var toDoListTableView: UITableView!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var toolBar: UIToolbar!
    
    static var taskDate: String? = nil
    static var tasks: [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        
        if let localData = readLocalFile(forName: "data") {
            parse(jsonData: localData)
            
        }
        
        
        let nib = UINib(nibName: "TaskCell", bundle: nil)
        toDoListTableView.register(nib, forCellReuseIdentifier: "TaskCell")
        toDoListTableView.delegate = self
        toDoListTableView.dataSource = self
        
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onClickDoneButton))
        let addButton = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTaskButton))
        toolBar.setItems([addButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
    }
    
//    func currentDate(date: UIDatePicker) -> String {
//        let currentDate = DateFormatter()
//        currentDate.dateFormat = "HH:mm"
//        ToDoViewController.currentDate = currentDate.string(from: datePicker.date)
//    }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        ToDoViewController.taskDate = format.string(from: datePicker.date)
        
    }
    
    @objc func onClickDoneButton() {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        ToDoViewController.taskDate = format.string(from: datePicker.date)
        toDoListTableView.reloadData()
    }
    
    @objc func addTaskButton() {
        performSegue(withIdentifier: "DetailsList", sender: nil)
    }
    
    
}

extension ToDoViewController: UITableViewDelegate {}

extension ToDoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        oneDayHours.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TaskCell
        let time = oneDayHours[indexPath.row]
        let taskName = Task.init(taskData: [:])
        cell.timeLabel.text = time
        
        cell.timeTaskLabel.text = taskName.name
        

        
        return cell
    }
    
}


