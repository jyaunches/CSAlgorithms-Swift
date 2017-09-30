//
//  Stack.swift
//  CSAlgorithms
//
//  Created by Julietta Yaunches on 9/23/17.
//  Copyright © 2017 Julietta Yaunches. All rights reserved.
//

import Foundation

struct Stack {
    var name: String
    var contents: Array<Int>
    
    init(name: String, contents: Array<Int> = Array<Int>()) {
        self.name = name
        self.contents = contents
    }
    
    mutating func push(_ val: Int) {
        self.contents.append(val)
    }
    
    mutating func pop() -> Int {
        return self.contents.removeLast()
    }
}
