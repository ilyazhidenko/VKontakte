//
//  MyGroopsController.swift
//  VKontakte
//
//  Created by Илья Жиденко on 08.02.2020.
//  Copyright © 2020 Ilya Zhidenko. All rights reserved.
//

import UIKit

class MyGroopsController: UITableViewController {
    @IBAction func addGroop(segue: UIStoryboardSegue){
        if segue.identifier == "addGroup"{
            let allGroupController = segue.source as! AllGroopController
            if let indexPath = allGroupController.tableView.indexPathForSelectedRow{
                let groop = allGroupController.groop[indexPath.row]
            
                tableView.reloadData()
            }
        }
    }
    
 /*   var mygroops = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mygroops.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroopCell", for: indexPath) as! MyGroopsCell
        let mygroop = mygroops[indexPath.row]
        cell.MyGroop.text = mygroops
        return cell
    }

}*/

    var mygroop = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mygroop.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyGroopCell", for: indexPath) as! MyGroopsCell
        let groops = mygroop[indexPath.row]
        cell.mygroopName.text = groops
        return cell
    }

}
