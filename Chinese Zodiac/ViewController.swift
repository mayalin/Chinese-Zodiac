//
//  ViewController.swift
//  Chinese Zodiac
//
//  Created by yalin.ma on 2/14/16.
//  Copyright © 2016 yalin.ma. All rights reserved.
//


import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    let cellIdentifier = "Cell"
    @IBOutlet weak var tableView: UITableView!
    //var data = ["🐭 Rat", "🐂 Ox", "🐯 Tiger", "🐰 Rabbit", "🐲 Dragon","🐍 Snake", "🐎 Horse", "🐑 Sheep", "🐒 Monkey", "🐔 Rooster", "🐶 Dog", "🐷 Pig"]
    var data = ["🐭 鼠", "🐂 牛", "🐯 虎", "🐰 兔", "🐲 龙","🐍 蛇", "🐎 马", "🐑 羊", "🐒 猴", "🐔 鸡", "🐶 狗", "🐷 猪"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView)
        -> Int {
            return 1
    }
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
            return 12
    }
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            var cell : UITableViewCell! =
            tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
            
            
            if cell == nil {
                cell = UITableViewCell(
                    style:.Default, reuseIdentifier:cellIdentifier)
                cell.textLabel!.textColor = UIColor.darkGrayColor()
                cell.textLabel!.highlightedTextColor = UIColor.brownColor()
            }
            
            
            cell.textLabel!.text = data[indexPath.row]
            return cell
    }
}
