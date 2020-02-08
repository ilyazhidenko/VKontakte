//
//  AllGroopController.swift
//  VKontakte
//
//  Created by Илья Жиденко on 08.02.2020.
//  Copyright © 2020 Ilya Zhidenko. All rights reserved.
//

import UIKit

class AllGroopController: UITableViewController {
    
    var groop = [
    "Moscow",
    "Krasnoyarsk",
    "London",
    "Paris"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groop.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroopCell", for: indexPath) as! AllGroopCell
        let groops = groop[indexPath.row]
        cell.groopName.text = groops
        return cell
    }

}
