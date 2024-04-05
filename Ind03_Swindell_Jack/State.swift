//
//  State.swift
//  Ind03_Swindell_Jack
//
//  Created by Swindell, Jack on 4/4/24.
//

import Foundation
import UIKit

class State {
    var name: String
    var map: UIImage
    var flag: UIImage
    var areas = [
        "Alabama": 52420,
        "Alaska": 665384,
        "Arizona": 113990,
        "Arkansas": 53179,
        "California": 163695,
        "Colorado": 104094,
        "Connecticut": 5543,
        "Delaware": 2489    ,
        "Florida": 65758,
        "Georgia": 59425,
        "Hawaii": 10932,
        "Idaho": 83569,
        "Illinois": 57914,
        "Indiana": 36420,
        "Iowa": 56273,
        "Kansas": 82278,
        "Kentucky": 40408,
        "Louisiana": 52378,
        "Maine": 35380,
        "Maryland": 12406,
        "Massachusetts": 10554,
        "Michigan": 96714,
        "Minnesota": 86936,
        "Mississippi": 48432,
        "Missouri": 69707,
        "Montana": 147040,
        "Nebraska": 77348,
        "Nevada": 110572,
        "New Hampshire": 9349,
        "New Jersey": 8723,
        "New Mexico": 121590,
        "New York": 54555,
        "North Carolina": 53819,
        "North Dakota": 70698,
        "Ohio": 44826,
        "Oklahoma": 69899,
        "Oregon": 98379,
        "Pennsylvania": 46054,
        "Rhode Island": 1545,
        "South Carolina": 32020,
        "South Dakota": 77116,
        "Tennessee": 42144,
        "Texas": 268596,
        "Utah": 84897,
        "Vermont": 9616,
        "Virginia": 42775,
        "Washington": 71298,
        "West Virginia": 24230,
        "Wisconsin": 65496,
        "Wyoming": 97813,
    ]
    init(name: String) {
        self.name = name
        self.map = UIImage(named: "\(name)Map")!
        self.flag = UIImage(named: "\(name)Flag")!
    }
    func getArea() -> String {
        return "\(String(describing: areas[self.name])) Sq. Miles"
    }
}
