//
//  MapsAndHashingTests.swift
//  MapsAndHashingTests
//
//  Created by Ronak Shastri on 2019-10-07.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

import XCTest
@testable import MapsAndHashing

class MapsAndHashingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAddCities() {
        addCity(("Mosco","Rasia","Asia"))
        addCity(("Ahmedabad","India","Asia"))
        addCity(("Beijing","China","Asia"))
        addCity(("Toronto","Canada","North America"))
    }
}
