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
    
    let footerView = UIView(frame: CGRectMake(0, 0, view.frame.size.width, 0.5))
    footerView.backgroundColor = UIColor(white: 0.8, alpha: 1.0)
    tableView.tableFooterView = footerView
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
