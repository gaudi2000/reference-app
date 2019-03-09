//
//  ReferenceTableViewController.swift
//  reference app
//
//  Created by Влад on 02.03.2019.
//  Copyright © 2019 Влад. All rights reserved.
//

import UIKit

class ReferenceTableViewController: UITableViewController {
    
    var dreams: [Dream]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dreams = Dream.load()
        navigationItem.title = Dream.title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dreams.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gaudi")!
        
        let dream = dreams[indexPath.row]
        
        cell.textLabel?.text = dream.name
        cell.detailTextLabel?.text = dream.content
        cell.imageView?.image = dream.image
        
        return cell
    }
}
