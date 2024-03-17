//
//  FoodTableVewController.swift
//  Meal Tracker
//
//  Created by Cesar Fernandez on 3/15/24.
//

import UIKit

class FoodTableViewController: UITableViewController {

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
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        let meal = meals[indexPath.section]
        let food = meal.food[indexPath.row]
        
        var content = cell.defaultContentConfiguration()

        content.text = food.name
        content.secondaryText = food.description
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    var meals: [Meal] {
        let breakfast = Meal(name: "breakfast", food: [Food(name: "Huevos Rancheros", description: "Mexican style eggs with salsa"),
                                                      Food(name: "Salsa verde", description: "Roasted tomatillo salsa"),
                                                      Food(name: "Queso fresco", description: "Mexican style fresh cheese")])
        
        let lunch = Meal(name: "lunch", food: [Food(name: "Fried Rice", description: "Chinese style fried rice"),
                                              Food(name: "Chili crisp", description: "Chinese fried dried chillis & oil"),
                                              Food(name: "Yum yum Sauce", description: "Habachi style sauce")])
        
        let dinner = Meal(name: "dinner", food: [Food(name: "Braised Ribs", description: "Short ribs in wine reduction"),
                                                Food(name: "Crispy Polenta", description: "Italian cornmeal made crispy"),
                                                Food(name: "Trumpet mushrooms", description: "Meaty, nutty, and earthy")])
        
        return [breakfast, lunch, dinner]
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
