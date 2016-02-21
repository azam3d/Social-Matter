//
//  ViewController.swift
//  Social Matter
//
//  Created by Muhammad Azam Baderi on 20/02/2016.
//  Copyright © 2016 Twebble. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  @IBOutlet var tableView: UITableView!
  var items: [String] = ["We", "Heart", "Swift"]

  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
    let translation = recognizer.translationInView(self.view)
    if let view = recognizer.view {
      view.center = CGPoint(x:view.center.x + translation.x, y:view.center.y + translation.y)
    }
    recognizer.setTranslation(CGPointZero, inView: self.view)
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.items.count;
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
    
    if let label = cell.textLabel {
      cell.textLabel?.text = self.items[indexPath.row]
    }
    
    return cell
  }
  
  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
  }
}

