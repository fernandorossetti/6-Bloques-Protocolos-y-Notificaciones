//
//  RestaurantTableViewController.swift
//  HotelsView
//
//  Created by fernando rossetti on 12/12/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
 //MARK:Properties
    
    var restaurants = [Restaurant]()
    let cellIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
    restaurants = Restaurant.restaurants()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath)as! RestaurantCell
        let restaurant = restaurants[indexPath.row]
        cell.nameLabel.text = restaurant.name
        cell.iconImageView.image = UIImage(named: restaurant.image)
        cell.setupStars(restaurant.ranking)

        return cell
    }
    

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let restaurant = restaurants[indexPath.row]
        self.performSegueWithIdentifier("detailRestaurant", sender: restaurant)
    }

    
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailVC = segue.destinationViewController as! DetailTableViewController
        detailVC.restaurant = sender as! Restaurant
        
    }
    

}
