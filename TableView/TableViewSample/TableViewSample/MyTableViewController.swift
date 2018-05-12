//
//  MyTableViewController.swift
//  TableViewSample
//
//  Created by Aluno on 12/05/18.
//  Copyright © 2018 CESAR School. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    let stringRepo = StringRepository.instance
  
     var section2values = ["Rainbow1", "Banana1", "Social1"]
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Section 1"
        }
        else {
            return "Section 2"
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 { return stringRepo.size() }
        else { return  section2values.count }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my_cell", for: indexPath)
        
//        if indexPath.section == 0 {
//            let stringValue = stringRepo.get(at: indexPath.row)
//            cell.textLabel?.text = stringValue
//            cell.detailTextLabel?.text = "No details"
//            cell.imageView?.image = #imageLiteral(resourceName: "hangloose")
//        } else {
//            let stringValue = section2values[indexPath.row]
//            cell.textLabel?.text = stringValue
//            cell.detailTextLabel?.text = "No details 1"
//            cell.imageView?.image = #imageLiteral(resourceName: "rock")
//        }
        
        return cell
    }
    

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            if indexPath.section == 0 {
                _ = stringRepo.remove(at: indexPath.row)
            } else {
                _ = section2values.remove(at: indexPath.row)
            }
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
