//
//  Maps.swift
//  MapsAndHashing
//
//  Created by Ronak Shastri on 2019-10-07.
//  Copyright © 2019 Ronak Shastri. All rights reserved.
//

/*
 Cities to add:
 Bangalore (India, Asia)
 Atlanta (USA, North America)
 Cairo (Egypt, Africa)
 Shanghai (China, Asia)
 */

import Foundation

var locations = ["North America" : ["USA" : ["Mountain View"]]]

/*
 Print the following
 1. A list of all cities in the USA in
 alphabetical order. Hint: use the array sorted() method
 2. All cities in Asia, in alphabetical
 order, next to the name of the country.
 In your output, label each answer with a number
 so it looks like this:
 1
 American City
 American City
 2
 Asian City - Country
 Asian City - Country
 */

// Your code goes here

func addCity(_ data : (String,String,String)) {
    if var _ = locations[data.2] {
        if var _ = locations[data.2]?[data.1] {
            locations[data.2]?[data.1]?.append(data.0)
        }
        else {
            locations[data.2]?[data.1] = [data.0]
        }
    }
    else {
        locations[data.2] = [data.1 : [data.0]]
    }
}
