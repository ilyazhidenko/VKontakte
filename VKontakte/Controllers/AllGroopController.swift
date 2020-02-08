//
//  AllGroopController.swift
//  VKontakte
//
//  Created by Илья Жиденко on 08.02.2020.
//  Copyright © 2020 Ilya Zhidenko. All rights reserved.
//

import UIKit

class AllGroopController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 08*/
    }



extension AllGroopController: UITableViewConrollerDataSource {
    func tableView(_ tableView: UITableViewConroller, numberOfRowsInSection section: Int) -> Int {
        <#function body#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath) -> UITableViewCell {
        <#function body#>
    }
    
}
