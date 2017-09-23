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

class BedStoreSpec: QuickSpec {
    override func spec() {
        describe("Storing remote beds") {
            it("should retrieve basic bed") {                
                expect(1).to(equal(2))
            }
        }
    }
}
