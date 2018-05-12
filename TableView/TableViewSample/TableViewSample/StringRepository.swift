//
//  StringRepository.swift
//  TableViewSample
//
//  Created by Aluno on 12/05/18.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import Foundation

class StringRepository {
    
    var listOfStrings = ["Rainbow", "Banana", "Social"]
    
    static var singleton: StringRepository?
    
    
    static var instance: StringRepository {
        get {
            if singleton == nil {
                singleton = StringRepository()
            }
            return singleton!
        }
    }
    
    func insert(value: String) {
        listOfStrings.append(value)
    }
    
    func remove(at index: Int) -> String {
        return listOfStrings.remove(at: index)
    }
    
    func get (at index: Int) -> String {
        return listOfStrings[index]
    }
}
