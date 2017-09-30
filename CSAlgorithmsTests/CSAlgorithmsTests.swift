//
//  CSAlgorithmsTests.swift
//  CSAlgorithmsTests
//
//  Created by Julietta Yaunches on 9/23/17.
//  Copyright © 2017 Julietta Yaunches. All rights reserved.
//

import Quick
import Nimble
@testable import CSAlgorithms

class HanoiTowerSpec: QuickSpec {
    override func spec() {
        describe("Hanoi tower") {
            /*
             Rules for Towers of Hanoi. The goal of the puzzle is to move all the disks from the leftmost peg to the rightmost peg, adhering to the following rules: Move only one disk at a time. A larger disk may not be placed ontop of a smaller disk.
            */
            
            /*
             Solution discusion:
             The key to a recursive solution is to keep in mind a shifting buffer. All towers should be used as buffers towers.
             
             Consider the problem of moving 2 disks first.
             
             You're going to first move the smallest item to the buffer. Followed by moving the larger disk to the destination, then the disk on the buffer back on top of the destination.
             
             1. Move disk count - 1 to the buffer.
             2. Move 1 disk to the destination.
             3. Move disk count - 1 from buffer to the destination.             
             
             Total number of moves should be 2^n-1 where n = number of disks
            */
            it("should move 5 disks from tower A to tower C") {
                
                var towerA = Stack(name: "Tower A")
                var towerB = Stack(name: "Tower B")
                var towerC = Stack(name: "Tower C")
                
                for index in 1...5 {
                    towerA.push(index)
                }
                
                let hanoi = HanoiTower()
                hanoi.transfer(numDisks: 5,
                               origin: &towerA,
                               destination: &towerC,
                               buffer: &towerB)
                
                expect(towerC.contents.count).to(equal(5))
                expect(hanoi.numMoves).to(equal(31))
            }
        }
    }
}
