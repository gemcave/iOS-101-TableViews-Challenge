//
//  MonthTableViewController.swift
//  SoLong&HardYear
//
//  Created by Zuck Rossental on 08.12.15.
//  Copyright © 2015 gemcave. All rights reserved.
//

import Foundation
import UIKit

class TableMonthViewController: UITableViewController{
        var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return months.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MonthCell", forIndexPath: indexPath)
        
        cell.textLabel!.text = months[indexPath.row]
        cell.imageView!.image = UIImage(named: String(format:
            "%02d.jpg", arguments: [indexPath.row+1]))
        
        return cell
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("toPaperViewSegue", sender: nil)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toPaperViewSegue" {
            let paperViewController = segue.destinationViewController as! PaperViewController
            if let indexPath = tableView.indexPathForSelectedRow {
                paperViewController.monthToShow = indexPath.row + 1
                paperViewController.monthName = months[indexPath.row]
            }
        }
    }
    
}

