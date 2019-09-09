//
//  FratTableVC.swift
//  blackbook
//
//  Created by Turner Thornberry on 8/10/19.
//  Copyright © 2019 personal. All rights reserved.
//

import UIKit
import Foundation

class FratTableVC: UITableViewController {
    
    
    var fratFlagImages = [UIImage()]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.tintColor = UIColor.black
//        self.navigationController?.navigationBar.isTranslucent = false
//        self.navigationController?.navigationBar.backgroundColor = UIColor.white

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...fratNames.count {
            let currFlagImage = UIImage(named: "FF\(i).jpeg")
            self.fratFlagImages.append(currFlagImage!)
            
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fratNames.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FratFlagCell", for: indexPath) as! FratFlagCell
        let currName = fratNames[indexPath.row]
        cell.name.setTitle(currName, for: .normal)
        cell.flag.image = fratFlagImages[indexPath.row+1]
        return cell
    }
}
