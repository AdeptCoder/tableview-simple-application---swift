//
//  ViewController.swift
//  tableviewapp
//
//  Created by Sumirna Philips on 3/30/17.
//  Copyright © 2017 19483. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var customTView: UITableView!
    var items: [String] = ["We", "Heart", "Swift"]
    var sectiontitle:[String] = ["Title 1", "Title 2"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func numberOfSections(in tableView: UITableView) -> Int{
     return sectiontitle.count;
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.selectionStyle = UITableViewCellSelectionStyle.blue
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        cell.textLabel?.text = " " + self.items[indexPath.row]

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
    }
   /*func numberOfSectionsInTableView(tableView: UITableView) -> Int {

    return sectiontitle.count;
    
    }*/
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return self.sectiontitle[section]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


