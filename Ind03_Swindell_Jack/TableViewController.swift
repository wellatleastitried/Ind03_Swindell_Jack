//
//  TableViewController.swift
//  Ind03_Swindell_Jack
//
//  Created by Swindell, Jack on 4/5/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    let data = [
        "Alabama:Yellowhammer State",
        "Alaska:The Last Frontier",
        "Arizona:The Grand Canyon State",
        "Arkansas:The Natural State",
        "California:The Golden State",
        "Colorado:The Centennial State",
        "Connecticut:The Constitution State",
        "Delaware:The First State",
        "Florida:The Sunshine State",
        "Georgia:The Peach State",
        "Hawaii:The Aloha State",
        "Idaho:The Gem State",
        "Illinois:Prairie State",
        "Indiana:The Hoosier State",
        "Iowa:The Hawkeye State",
        "Kansas:The Sunflower State",
        "Kentucky:The Bluegrass State",
        "Louisiana:The Pelican State",
        "Maine:The Pine Tree State",
        "Maryland:The Old Line State",
        "Massachusetts:The Bay State",
        "Michigan:The Great Lakes State",
        "Minnesota:The North Star State",
        "Mississippi:The Magnolia State",
        "Missouri:The Show Me State",
        "Montana:The Treasure State",
        "Nebraska: The Cornhusker State",
        "Nevada:The Silver State",
        "New Hampshire:The Granite State",
        "New Jersey:The Garden State",
        "New Mexico:The Land of Enchantment",
        "New York:The Empire State",
        "North Carolina:The Tar Heel State",
        "North Dakota:The Peace Garden State",
        "Ohio:The Buckeye State",
        "Oklahoma:The Sooner State",
        "Oregon:The Beaver State",
        "Pennsylvania:The Keystone State",
        "Rhode Island:The Ocean State",
        "South Carolina:The Palmetto State",
        "South Dakota:Mount Rushmore State",
        "Tennessee:The Volunteer State",
        "Texas:The Lone Star State",
        "Utah:The Beehive State",
        "Vermont:The Green Mountain State",
        "Virginia:The Old Dominion",
        "Washington:The Evergreen State",
        "West Virginia: The Mountain State",
        "Wisconsin:The Badger State",
        "Wyoming:The Cowboy State"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = data[indexPath[1]].components(separatedBy: ":")[0]
        cell.detailTextLabel?.text = data[indexPath[1]].components(separatedBy: ":")[1]
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "CellToInfo" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let stateName = data[indexPath.row].components(separatedBy: ":")[0]
                let state = State(name: stateName)
                if let destinationVC = segue.destination as? ViewController {
                    destinationVC.stateObject = state
                }
            }
        }
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let stateName = data[indexPath.row].components(separatedBy: ":")[0]
        let state = State(name: stateName)
        performSegue(withIdentifier: "CellToInfo", sender: state)
    }

}
