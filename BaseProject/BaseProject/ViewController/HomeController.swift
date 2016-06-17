//
//  HomeController.swift
//  BaseProjectSwift
//
//  Created by Minh Tien on 6/1/16.
//  Copyright © 2016 MTLABSWIFT. All rights reserved.
//

import UIKit
import SwiftyJSON

class HomeController: BaseCollectionController {
    override func initWithTargetCollectionView(targetCollection: UICollectionView) -> AnyObject {
        [super.initWithTargetCollectionView(targetCollection)]
        let arr = [["Section0: Row 0", "Section0: Row 1", "Section0: Row 2"],["Section1: Row 0", "Section1: Row 1"]]
        let sec = ["Section 0","Section 1"]
        self.updateCollectionView(arr, listSections: sec)
        return self
    }
    
    override func getCellIndenifi(item: AnyObject?, returnNameClass: Bool) -> String {
        if returnNameClass {
            return NSStringFromClass(CellTest)
        }else {
            return CellTest.nibName()
        }
    }
    
    override func getHeaderSection(item: AnyObject?, returnNameClass: Bool) -> String {
        if(returnNameClass){
            return NSStringFromClass(HeaderHomeView)
        }else{
            return HeaderHomeView.nibName()
        }
    }
    
    override func registerNibWithColletion(collectionView: UICollectionView) {
        collectionView.backgroundColor = UIColor.clearColor()
        collectionView.registerNib(CellTest.nib(), forCellWithReuseIdentifier: CellTest.nibName())
        collectionView.registerNib(HeaderHomeView.nib(), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: HeaderHomeView.nibName())
    }
}


extension BaseCollectionController {
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
}



