//
//  ToDoViewController.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import UIKit

class ToDoViewController: UIViewController {
    
    @IBOutlet var toDoListTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "TaskTableViewCell", bundle: nil)
        toDoListTableView.register(nib, forCellReuseIdentifier: "TaskTableViewCell")
        toDoListTableView.delegate = self
        toDoListTableView.dataSource = self
      
        }
    
    @IBAction func changeDate(_ sender: UIDatePicker) {

    }

}

extension ToDoViewController: UITableViewDelegate {}

extension ToDoViewController: UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  24
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskTableViewCell", for: indexPath) as! TaskTableViewCell
        let time = TimeCell.make24hStrings(indexPath.row)
        cell.timeLabel.text = time
        return cell
    }

}

