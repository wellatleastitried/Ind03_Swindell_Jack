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
    
    
    var receivedTitle: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let title = receivedTitle {
            stateName.text = title
        }
        let state = State(name: receivedTitle ?? "Texas")
        flag.image = state.flag
        map.image = state.map
        areaOfState.text = state.getArea()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CellToInfo" {
            if let title = sender as? String {
                receivedTitle = title
            }
        }
    }
}

