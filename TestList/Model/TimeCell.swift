//
//  TimeHelper.swift
//  TestList
//
//  Created by Admin on 04.02.2022.
//

import Foundation

struct TimeCell {
    
    static func make24hStrings(_ index: Int) -> String {
        var time: String = ""
        for i in 0...index {
            let i = i % 24
                time = i < 10 ? "0" + String(i) : String(i)
               }

               return time + ":00"
             }
}
