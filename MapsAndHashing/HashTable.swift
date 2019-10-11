//
//  HashTable.swift
//  MapsAndHashing
//
//  Created by Ronak Shastri on 2019-10-07.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import Foundation

class HashTable {
    
    var table: [[String]]
    
    init() {
        table = Array(repeating: [], count: 10000)
    }
    
    // use the helper functions to calulate the hash value, per the instructions
    func calculateHashValue(_ input: String) -> Int {
        let total = (getFirstCharacterValue(input) * 100) + getSecondCharacterValue(input)
        return total % 9091
    }
    
    // store the input in the hash table, using the appropriate bucket
    func store(_ input: String) {
        let hashValue = calculateHashValue(input)
        table[hashValue].append(input)
    }
    
    // return true if the input string is stored in the hash table, otherwise return false
    func lookup(_ input: String) -> Bool {
        let hashValue = calculateHashValue(input)
        if table[hashValue].contains(input) {
            return true
        }
        return false
    }
    
    // gets the hash value of the first character
    func getFirstCharacterValue(_ input: String) -> Int {
        if input.count > 0 {
            return Int(input[input.startIndex].unicodeScalars.first!.value)
        }
        return 0
    }
    
    // gets the hash value of the second character
    func getSecondCharacterValue(_ input: String) -> Int {
        if input.count > 1 {
            return Int(input[input.index(after: input.startIndex)].unicodeScalars.first!.value)
        }
        // string does not have a second index
        return 0
    }
}

//let hashTable = HashTable()
//
//// these two have the same hash value
//let string1 = "UDACITY"
//let string2 = "UDACIOUS"
//// different hash value
//let string3 = "SWIFTASTIC"
//
//hashTable.store(string1)
//hashTable.store(string2)
//hashTable.store(string3)
//
//print(hashTable.lookup("SWIFT")) // false
//print(hashTable.lookup("UDACIOUS")) // true
//print(hashTable.lookup("UDACIAN")) // false
//print(hashTable.lookup("SWIFTASTIC")) // true

