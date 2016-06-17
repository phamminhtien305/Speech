//
//  RightMenuController.swift
//  BaseProject
//
//  Created by  on 6/17/16.
//  Copyright © 2016 framgia. All rights reserved.
//

import UIKit

class RightMenuController: BaseCollectionController {
    
    override func initWithTargetCollectionView(targetCollection: UICollectionView) -> AnyObject {
        super.initWithTargetCollectionView(targetCollection)
        
        return self
    }
    
    func getData() {
        APIEngine.sharedInstance.requestWithLink(withURL: API_CONTENT + "/website", withMethod: .GET, withParams: nil, onComplete: { (result, usingCache) in
//            if let element:JSON! = result?["websites"] {
//                
//                
//            }
        }) { (error) in
            
        }
    }
    
    override func registerNibWithColletion(collectionView: UICollectionView) {
        collectionView.backgroundColor = UIColor.whiteColor()
        
//        collectionView .registerNib(<#T##nib: UINib?##UINib?#>, forCellWithReuseIdentifier: <#T##String#>)
    }
    
    override func getCellIndenifi(item: AnyObject?, returnNameClass: Bool) -> String {
        return LeftMenuCell.nibName()
    }
    
}
