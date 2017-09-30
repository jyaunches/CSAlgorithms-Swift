//
//  HanoiTower.swift
//  CSAlgorithms
//
//  Created by Julietta Yaunches on 9/23/17.
//  Copyright © 2017 Julietta Yaunches. All rights reserved.
//

import Foundation

class HanoiTower {    
    var numMoves = 0

    func transfer(numDisks: Int, origin: inout Stack, destination: inout Stack, buffer: inout Stack) {
        
        if numDisks > 1 {
            print("Transferring \(numDisks) from \(origin.name) to \(destination.name) with \(buffer.name) as buffer.")
            let nextDisks = numDisks - 1
            
            transfer(numDisks: nextDisks,
                     origin: &origin,
                     destination: &buffer,
                     buffer: &destination)
            
            transfer(numDisks: 1, origin: &origin, destination: &destination, buffer: &buffer)
            transfer(numDisks: nextDisks, origin: &buffer, destination: &destination, buffer: &origin)
        } else if numDisks == 1 {
            print("Moving single disk from \(origin.name) to \(destination.name)")
            numMoves += 1
            let disk = origin.pop()
            destination.push(disk)
        }
    }
}
