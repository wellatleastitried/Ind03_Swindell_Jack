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
        "Alabama":"52,420",
        "Alaska":"665,384",
        "Arizona":"113,990",
        "Arkansas":"53,179",
        "California":"163,695",
        "Colorado":"104,094",
        "Connecticut":"5,543",
        "Delaware":"2,489",
        "Florida":"65,758",
        "Georgia":"59,425",
        "Hawaii":"10,932",
        "Idaho":"83,569",
        "Illinois":"57,914",
        "Indiana":"36,420",
        "Iowa":"56,273",
        "Kansas":"82,278",
        "Kentucky":"40,408",
        "Louisiana":"52,378",
        "Maine":"35,380",
        "Maryland":"12,406",
        "Massachusetts":"10,554",
        "Michigan":"96,714",
        "Minnesota":"86,936",
        "Mississippi":"48,432",
        "Missouri":"69,707",
        "Montana":"147,040",
        "Nebraska":"77,348",
        "Nevada":"110,572",
        "New Hampshire":"9,349",
        "New Jersey":"8,723",
        "New Mexico":"121,590",
        "New York":"54,555",
        "North Carolina":"53,819",
        "North Dakota":"70,698",
        "Ohio":"44,826",
        "Oklahoma":"69,899",
        "Oregon":"98,379",
        "Pennsylvania":"46,054",
        "Rhode Island":"1,545",
        "South Carolina":"32,020",
        "South Dakota":"77,116",
        "Tennessee":"42,144",
        "Texas":"268,596",
        "Utah":"84,897",
        "Vermont":"9,616",
        "Virginia":"42,775",
        "Washington":"71,298",
        "West Virginia":"24,230",
        "Wisconsin":"65,496",
        "Wyoming":"97,813"
    ]
    init(name: String) {
        self.name = name
        self.map = UIImage(named: "\(name.components(separatedBy: " ").joined())Map")!
        self.flag = UIImage(named: "\(name.components(separatedBy: " ").joined())Flag")!
    }
    func getArea() -> String {
        return "\(areas[self.name]!) Sq. Miles"
    }
}
