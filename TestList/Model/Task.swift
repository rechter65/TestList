//
//  Task.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import Foundation

struct Task: Codable {
    var id: String
    var dateStart: Date
    var dateFinish: Date
    var name: String
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case dateStart = "date_start"
        case dateFinish = "date_finish"
        case name = "name"
        case text = "description"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        let dateStartString = try values.decode(String.self, forKey: .dateStart)
        let dateStartInterval = TimeInterval(Int(dateStartString) ?? 00)
        let dateStartDate = Date(timeIntervalSince1970: dateStartInterval)
        dateStart = dateStartDate
        
        let dateFinishString = try values.decode(String.self, forKey: .dateFinish)
        let dateFinishInterval = TimeInterval(Int(dateFinishString) ?? 00)
        let dateFinishDate = Date(timeIntervalSince1970: dateFinishInterval)
        dateFinish = dateFinishDate
        
        id = try values.decode(String.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        text = try values.decode(String.self, forKey: .text)
        
    }
    
    init(taskData: [String: Any]) {
        id = taskData["id"] as! String
        name = taskData["name"] as! String
        dateStart = taskData["dateStart"] as! Date
        dateFinish = taskData["dateFinish"] as! Date
        text = taskData["text"] as! String
    }
     
//    static func getTasks(from value: Any) -> [Task] {
//        guard let tasksData = value as? [[String: Any]] else { return [] }
//        return tasksData.compactMap { Task(taskData: $0) }
//    }
}

