//
//  ViewController.swift
//  Ind03_Swindell_Jack
//
//  Created by Swindell, Jack on 4/4/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var flag: UIImageView!
    @IBOutlet var stateName: UILabel!
    @IBOutlet var map: UIImageView!
    @IBOutlet var areaOfState: UILabel!
    
    var stateObject: State?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let state = stateObject {
            stateName.text = state.name
            flag.image = state.flag
            map.image = state.map
            areaOfState.text = state.getArea()
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CellToInfo" {
            if let state = sender as? State {
                stateObject = state
            }
        }
    }
}

