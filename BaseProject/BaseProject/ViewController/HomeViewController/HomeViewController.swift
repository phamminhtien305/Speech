//
//  HomeViewController.swift
//  BaseProject
//
//  Created by  on 6/1/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit
import Alamofire
class HomeViewController: BaseViewController {
    
    let controller = HomeController()
    @IBOutlet weak var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        controller.initWithTargetCollectionView(collectionView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
