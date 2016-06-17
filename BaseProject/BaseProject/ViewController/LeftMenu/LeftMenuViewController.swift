//
//  LeftMenuViewController.swift
//  BaseProject
//
//  Created by  on 6/1/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class LeftMenuViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let controller:LeftMenuController = LeftMenuController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        controller.initWithTargetTableView(tableView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
