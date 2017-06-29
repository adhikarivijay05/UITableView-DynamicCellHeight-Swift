//
//  ViewController.swift
//  autolayout
//
//  Created by Vijay Adhikari on 29/06/2017.
//  Copyright © 2017 Vijay Adhikari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tabel: UITableView!
    
    let arr = ["India's latest communication satellite GSAT-17 was on Thursday successfully launched by a heavy duty rocket of Arianespace from the spaceport of Kourou in French Guiana.", "The European launcher Arianespace Flight VA238 blasted off from Ariane Launch Complex No 3 (ELA 3) at Kourou, a French territory located in northeastern coast of South America at 2:45 am IST, couple of minutes delayed than the scheduled time of 2:29 am.", "Noting it as a special mission for ISRO, he said GSAT-17 is a need of the hour for ISRO and India as it provides the continuity in services of ageing two satellites, as well as augmenting our transponder capability, and widening our horizon to mobile satellite services as well as to Antarctica areas.", "Prime Minister Narendra Modi said on Tuesday that the Netherlands is a natural partner in India’s economic development and thanked the key European nation for backing India’s Missile Technology Control Regime membership"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabel.estimatedRowHeight = 44.0
        tabel.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "tabCell"
        let cell:tabCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! tabCellTableViewCell
        
        cell.titleLbl.text = arr[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}



