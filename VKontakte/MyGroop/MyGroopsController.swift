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
        if segue.identifier == "addGroop" {
            let AllGroopController = segue.source as! AllGroopController
            if let indexPath = AllGroopController.tableView.indexPathForSelectedRow {
               let groop = AllGroopController.groop[indexPath.row]
                groop.append(groop)
                tableView.reloadData()
            }
        }
    }

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
