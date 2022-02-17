//
//  TaskManager.swift
//  TestList
//
//  Created by Admin on 11.02.2022.
//

import Foundation



func readLocalFile(forName name: String) -> Data? {
    do {
        if let bundlePath = Bundle.main.path(forResource: "data", ofType: "json"),
           let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            return jsonData
        }
    } catch  {
        print(error)
    }
    return nil
}

func parse(jsonData: Data) {
    do {
        let decoder = JSONDecoder()
        ToDoViewController.tasks = try decoder.decode([Task].self, from: jsonData)
        
    } catch {
        print(error)
    }
}



