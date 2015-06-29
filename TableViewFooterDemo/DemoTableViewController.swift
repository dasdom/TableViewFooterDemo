//
//  DemoTableViewController.swift
//  TableViewFooterDemo
//
//  Created by dasdom on 29.06.15.
//  Copyright © 2015 Dominik Hauser. All rights reserved.
//

import UIKit

class DemoTableViewController: UITableViewController {
  
  let apps = ["Fojusi", "Jupp"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    title = "Apps"
    
    tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "CellIdentifier")
    
    tableView.tableFooterView = UIView(frame: CGRectMake(0, 0, view.frame.size.width, 0))
  }
  
  // MARK: - Table view data source
  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return apps.count
  }
  
  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier", forIndexPath: indexPath)
    let appName = apps[indexPath.row]
    cell.imageView?.image = UIImage(named: appName.lowercaseString)
    cell.textLabel?.text = appName
    return cell
  }
}
