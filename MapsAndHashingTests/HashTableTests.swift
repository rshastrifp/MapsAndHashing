//
//  HashTableTests.swift
//  MapsAndHashingTests
//
//  Created by Ronak Shastri on 2019-10-07.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

import XCTest
@testable import MapsAndHashing

class HashTableTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testHashTables() {
        let hashTable = HashTable()
        
        // these two have the same hash value
        let string1 = "UDACITY"
        let string2 = "UDACIOUS"
        // different hash value
        let string3 = "SWIFTASTIC"
        
        hashTable.store(string1)
        hashTable.store(string2)
        hashTable.store(string3)
        
        print(hashTable.lookup("SWIFT")) // false
        print(hashTable.lookup("UDACIOUS")) // true
        print(hashTable.lookup("UDACIAN")) // false
        print(hashTable.lookup("SWIFTASTIC")) // true
    }
}
