//
//  Task.swift
//  TestList
//
//  Created by Admin on 03.02.2022.
//

import Foundation

class Task: Codable {
    var id: Int?
    var dateStart: Date?
    var dateFinish: Date?
    var name: String?
    var text: String?

    enum CodingKeys: String, CodingKey {
        case dateStart = "date_start"
        case dateFinish = "date_finish"

    }
}
