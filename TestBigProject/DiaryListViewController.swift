//
//  DiaryListViewController.swift
//  TestBigProject
//
//  Created by 段雯雯 on 16/6/6.
//  Copyright © 2016年 段雯雯. All rights reserved.
//

import UIKit

class DiaryListViewController: UITableViewController {
    var dateList=[String]()
    var answer1List=[String]()
    var answer2List=[String]()
    var answer3List=[String]()
    var answer4List=[String]()
    let question1="今天做的事情哪一件最有成就感"
    let question2="今天有什么收获"
    let question3="今天有没有什么遗憾的事情"
    let question4="明天有什么计划"
    var isSort = 0
    
    
    @IBAction func exitToList(sender: UIStoryboardSegue){
        NSLog("%@", "Exit")
        isSort = 0
        /*if let name = (sender.sourceViewController as? NewFoodViewController)?.foodName
        {
            if !name.isEmpty{
                foodList.append(name)
                self.tableView.reloadData()
            }
        } */
        
        if let onedate = (sender.sourceViewController as? NewDairyViewController)?.newDate
        {
            if !onedate.isEmpty{
                dateList.append(onedate)
                if let answer1 = (sender.sourceViewController as? NewDairyViewController)?.newAnswer1 {
                    if !answer1.isEmpty {
                        answer1List.append(answer1)
                    }
                }
                if let answer2 = (sender.sourceViewController as? NewDairyViewController)?.newAnswer2 {
                    if !answer2.isEmpty {
                        answer2List.append(answer2)
                    }
                }
                if let answer3 = (sender.sourceViewController as? NewDairyViewController)?.newAnswer3 {
                    if !answer3.isEmpty {
                        answer3List.append(answer3)
                    }
                }
                if let answer4 = (sender.sourceViewController as? NewDairyViewController)?.newAnswer4 {
                    if !answer4.isEmpty {
                        answer4List.append(answer4)
                    }
                }
                self.tableView.reloadData()
            }
        }
        
    }
    
    @IBAction func SortSelect(sender: UIBarButtonItem) {
        if isSort == 0 {
            isSort = 1
        }
        else {
            isSort = 0
        }
        self.tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        if isSort == 1 {
            return 4
        }
        return dateList.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if isSort == 1 {
            return dateList.count
        }
        return 4
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if isSort == 1 {
            switch(section) {
            case 0: return question1
            case 1: return question2
            case 2: return question3
            case 3: return question4
            default: return "Error"
            }
        }
        return dateList[section];
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("diaryCell", forIndexPath: indexPath)
        
        // Configure the cell...
        if isSort == 0 {
        if(indexPath.row == 0) {
            cell.textLabel?.text = question1
            cell.detailTextLabel?.text = answer1List[indexPath.section]
        }
        if(indexPath.row == 1) {
            cell.textLabel?.text = question2
            cell.detailTextLabel?.text = answer2List[indexPath.section]
        }
        if(indexPath.row == 2) {
            cell.textLabel?.text = question3
            cell.detailTextLabel?.text = answer3List[indexPath.section]
        }
        if(indexPath.row == 3) {
            cell.textLabel?.text = question4
            cell.detailTextLabel?.text = answer4List[indexPath.section]
        }
        }
        else if isSort == 1 {
            if(indexPath.section == 0) {
                cell.textLabel?.text = dateList[indexPath.row]
                cell.detailTextLabel?.text = answer1List[indexPath.row]
            }
            if(indexPath.section == 1) {
                cell.textLabel?.text = dateList[indexPath.row]
                cell.detailTextLabel?.text = answer2List[indexPath.row]
            }
            if(indexPath.section == 2) {
                cell.textLabel?.text = dateList[indexPath.row]
                cell.detailTextLabel?.text = answer3List[indexPath.row]
            }
            if(indexPath.section == 3) {
                cell.textLabel?.text = dateList[indexPath.row]
                cell.detailTextLabel?.text = answer4List[indexPath.row]
            }

        }
        return cell
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