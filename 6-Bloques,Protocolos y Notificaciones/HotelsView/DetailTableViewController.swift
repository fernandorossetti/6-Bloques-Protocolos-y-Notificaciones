//
//  DetailTableViewController.swift
//  HotelsView
//
//  Created by fernando rossetti on 13/12/16.
//  Copyright © 2016 fernando rossetti. All rights reserved.
//

import UIKit

class DetailTableViewController:UITableViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var coverSliderCollectionView: UICollectionView!
    @IBOutlet weak var reservaButton: UIButton!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var restaurant = Restaurant()

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = restaurant.name
        descriptionTextView.text = restaurant.details
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("SliderCell", forIndexPath: indexPath)as! SliderCollectionViewCell
        
        cell.imageImageView.image = UIImage(named: restaurant.image)
        
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return collectionView.bounds.size
    }
    
    override func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        let width = coverSliderCollectionView.frame.size.width
        
        pageControl.currentPage = Int(coverSliderCollectionView.contentOffset.x / width)
    }
    
    @IBAction func changedPageControl(sender: AnyObject)
    {
        let pageControl = sender as! UIPageControl
        let width = coverSliderCollectionView.frame.size.width
        
        coverSliderCollectionView.setContentOffset(CGPoint(x: (pageControl.currentPage * Int(width)), y: 0),animated: true)
    }
    
    @IBAction func reserved(sender: AnyObject) {
        let alertController = UIAlertController(title: "Reserva", message: "¿Que habitacion desea reservar?", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel) { action in
           
        }
        alertController.addAction(cancelAction)
        
        let suiteAction = UIAlertAction(title: "Suite", style: .Default) { action in
            
        }
        alertController.addAction(suiteAction)
        
        let dobleAction = UIAlertAction(title: "Doble", style: .Default) { action in
            
        }
        alertController.addAction(dobleAction)
        
        let sencillaAction = UIAlertAction(title: "Sencilla", style: .Default) { action in
           
        }
        alertController.addAction(sencillaAction)
        
        self.presentViewController(alertController, animated: true) {
            // ...
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
