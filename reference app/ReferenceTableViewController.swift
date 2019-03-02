//
//  ReferenceTableViewController.swift
//  reference app
//
//  Created by Влад on 02.03.2019.
//  Copyright © 2019 Влад. All rights reserved.
//

import UIKit

class ReferenceTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10000
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gaudi")!
        
        cell.textLabel?.text = "Row: \(indexPath.row)"
        
        return cell
    }
}
